<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Books;
use App\Models\Journal;
use App\Models\CD;
use App\Models\Newspaper;
use App\Models\FinalYearProject;
use App\Models\Journals;
use App\Models\Newspapers;

class CatalogController extends Controller
{
    public function index(Request $request)
    {
        $category = $request->input('category', 'books');
        $sort = $request->input('sort', 'asc');

        if ($category === 'all') {
            $books = Books::orderBy('judul', $sort)->get();
            $journals = Journals::orderBy('judul', $sort)->get();
            $cds = CD::orderBy('judul', $sort)->get();
            $newspapers = Newspapers::orderBy('judul', $sort)->get();
            $final_year_projects = FinalYearProject::orderBy('judul', $sort)->get();
        } else {
            $model = match($category) {
                'books' => Books::class,
                'journals' => Journals::class,
                'cds' => CD::class,
                'newspapers' => Newspapers::class,
                'final_year_projects' => FinalYearProject::class,
                default => Books::class,
            };

            ${$category} = $model::orderBy('judul', $sort)->get();
        }

        return view('catalog.index', [
            'books' => $books ?? [],
            'journals' => $journals ?? [],
            'cds' => $cds ?? [],
            'newspapers' => $newspapers ?? [],
            'final_year_projects' => $final_year_projects ?? [],
            'selectedCategory' => $category,
            'selectedSort' => $sort,
        ]);
    }

}
