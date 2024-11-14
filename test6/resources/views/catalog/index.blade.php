<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Catalog</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #eef2f5;
            color: #222;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
        }
        h1 {
            background: linear-gradient(135deg, #41cbb0, #50ffe2);
            color: white;
            padding: 15px;
            margin: 0;
            font-size: 28px;
            text-align: center;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            font-weight: bold;
            letter-spacing: 1.5px;
        }
        h2 {
            font-size: 20px;
            margin-top: 30px;
            color: #41cbb0;
            font-weight: bold;
            border-bottom: 2px solid #41cbb0;
            padding-bottom: 5px;
        }
        .container {
            max-width: 1000px;
            width: 90%;
            background: white;
            padding: 25px;
            margin-top: 20px;
            border-radius: 12px;
            box-shadow: 0px 10px 15px rgba(0, 0, 0, 0.1);
        }
        form {
            display: flex;
            justify-content: space-between;
            gap: 15px;
            align-items: center;
            margin-bottom: 25px;
            background-color: #f0f4f8;
            padding: 10px;
            border-radius: 8px;
        }
        label {
            font-weight: 600;
            color: #41cbb0;
        }
        select {
            padding: 8px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 15px;
            outline: none;
            transition: border-color 0.3s ease;
        }
        select:focus {
            border-color: #41cbb0;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            font-size: 15px;
        }
        th, td {
            padding: 14px;
            border-bottom: 1px solid #e0e7eb;
            text-align: left;
        }
        th {
            background-color: #f5f8fb;
            color: #333;
            font-weight: 700;
        }
        tr:hover {
            background-color: #f0f9ff;
            transition: background-color 0.3s;
        }
        tr:nth-child(even) {
            background-color: #f9fcff;
        }
        button {
            padding: 8px 16px;
            background-color: #4A90E2;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 15px;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #3a7fcb;
        }
        /* Responsive */
        @media (max-width: 768px) {
            form {
                flex-direction: column;
                align-items: flex-start;
            }
            form div {
                margin-bottom: 10px;
            }
            h1 {
                font-size: 22px;
            }
            th, td {
                padding: 10px;
            }
            h2 {
                font-size: 18px;
            }
        }
    </style>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const categorySelect = document.getElementById("category");
            const sortSelect = document.getElementById("sort");

            categorySelect.addEventListener("change", function () {
                this.form.submit();
            });

            sortSelect.addEventListener("change", function () {
                this.form.submit();
            });
        });
    </script>
</head>
<body>
    <h1>Library Catalog</h1>
    <div class="container">
        <form method="GET" action="{{ route('catalog.index') }}">
            <div>
                <label for="category">Category:</label>
                <select name="category" id="category">
                    <option value="all" {{ $selectedCategory === 'all' ? 'selected' : '' }}>All Categories</option>
                    <option value="books" {{ $selectedCategory === 'books' ? 'selected' : '' }}>Books</option>
                    <option value="journals" {{ $selectedCategory === 'journals' ? 'selected' : '' }}>Journals</option>
                    <option value="cds" {{ $selectedCategory === 'cds' ? 'selected' : '' }}>CD</option>
                    <option value="newspapers" {{ $selectedCategory === 'newspapers' ? 'selected' : '' }}>Newspapers</option>
                    <option value="final_year_projects" {{ $selectedCategory === 'final_year_projects' ? 'selected' : '' }}>Final Year Projects</option>
                </select>
            </div>
            <div>
                <label for="sort">Sorting:</label>
                <select name="sort" id="sort">
                    <option value="asc" {{ $selectedSort === 'asc' ? 'selected' : '' }}>Ascending</option>
                    <option value="desc" {{ $selectedSort === 'desc' ? 'selected' : '' }}>Descending</option>
                </select>
            </div>
        </form>

        @if ($selectedCategory === 'all' || $selectedCategory === 'books')
            <h2>Books</h2>
            <table>
                <thead>
                    <tr>
                        <th>Judul</th>
                        <th>Nama Penerbit</th>
                        <th>Nama Penulis</th>
                        <th>Tanggal Terbit</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($books as $book)
                        <tr>
                            <td>{{ $book->judul }}</td>
                            <td>{{ $book->namapenerbit }}</td>
                            <td>{{ $book->namapenulis }}</td>
                            <td>{{ $book->tahunterbit }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        @endif

        @if ($selectedCategory === 'all' || $selectedCategory === 'journals')
            <h2>Journals</h2>
            <table>
                <thead>
                    <tr>
                        <th>Judul</th>
                        <th>Nama Penulis</th>
                        <th>Tannggal Terbit</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($journals as $journal)
                        <tr>
                            <td>{{ $journal->judul }}</td>
                            <td>{{ $journal->namapenulis1 }}</td>
                            <td>{{ $journal->tahunterbit }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        @endif

        @if ($selectedCategory === 'all' || $selectedCategory === 'cds')
            <h2>CD</h2>
            <table>
                <thead>
                    <tr>
                        <th>Judul</th>
                        <th>Pengarang</th>
                        <th>Penerbit</th>
                        <th>Tanggal Terbit</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($cds as $cd)
                        <tr>
                            <td>{{ $cd->judul }}</td>
                            <td>{{ $cd->namapenulis }}</td>
                            <td>{{ $cd->namapenerbit }}</td>
                            <td>{{ $cd->tahunterbit }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        @endif

        @if ($selectedCategory === 'all' || $selectedCategory === 'newspapers')
            <h2>Newspapers</h2>
            <table>
                <thead>
                    <tr>
                        <th>Judul</th>
                        <th>Penerbit</th>
                        <th>Tanggal Terbit</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($newspapers as $newspaper)
                        <tr>
                            <td>{{ $newspaper->judul }}</td>
                            <td>{{ $newspaper->namapenerbit }}</td>
                            <td>{{ $newspaper->tahunterbit }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        @endif

        @if ($selectedCategory === 'all' || $selectedCategory === 'final_year_projects')
            <h2>Final Year Projects</h2>
            <table>
                <thead>
                    <tr>
                        <th>Judul</th>
                        <th>Nama Penulis</th>
                        <th>Deskripsi</th>
                        <th>Tanggal Terbit</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($final_year_projects as $fyp)
                        <tr>
                            <td>{{ $fyp->judul }}</td>
                            <td>{{ $fyp->namapenulis }}</td>
                            <td>{{ $fyp->deskripsi }}</td>
                            {{-- <td>{{ $fyp->dosen_pembimbing }}</td> --}}
                            <td>{{ $fyp->tahunterbit }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        @endif

    </div>
</body>
</html>
