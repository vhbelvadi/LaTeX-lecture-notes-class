# LaTeX class for lecture notes

[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)
[![Open Source Love](https://badges.frapsoft.com/os/mit/mit.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)

[![forthebadge](http://forthebadge.com/images/badges/built-with-science.svg)](http://forthebadge.com)

**Author:** V.H. Belvadi

**Webpage:** [http://vhbelvadi.com/latex-lecture-notes-class/](http://vhbelvadi.com/latex-lecture-notes-class)

**Current release:** v2.4 <a href="https://github.com/vhbelvadi/LaTeX-lecture-notes-class/releases/latest"><img src="https://img.shields.io/badge/Download-latest%20release-brightgreen.svg" style="vertical-align: text-bottom;margin-left: 24px;"></a>

**Description:** A LaTeX document class built for lecture notes for classes/seminars, entire courses or brief talks.
A detailed article about this class can be found on [the author's website](http://vhbelvadi.com/latex-lecture-notes-class/).
The same data condensed into brief notes about working with this class, for those who are familiar with this sort of thing, can be found below.

**Download**: To work with this class the absolute minimum requirements are the .cls and .sty files, but this repository has several other files too. The easiest approach is to [download the latest release](https://github.com/vhbelvadi/LaTeX-lecture-notes-class/releases/latest) and manually extract the two required files. Alternately, you can use svn or git sparse checkouts.

## Installing the class

Simply drop the `.cls` and `.sty` files into your LaTeX document tree.
On UNIX systems this is usually `~/texmf/` and is `C:\Users\user_name\texmf\` on Windows.

Although not necessary, it is highly recommended that you place these files inside their own folder with the tree `.../texmf/tex/latex/folder_name` for better package management.

MikTex does things differently: `C:\Users\user_name\Appdata\Local\MikTex\###\tex\latex\local\`.
On a Mac navigate to `~/Library/texmf/` using the option key once you are in the Go menu on any Finder window.

There are several resources online that can help you in greater detail when it comes to installing .cls and .sty files.
Once you figure out where they should be placed in your TEXMFHOME tree, just make sure the two files reside together in the same folder.

## Working with the class

Your documents based on this lecture class must adhere to the following blueprint:

```
\documentclass[options]{lecture}

\title{}
\subtitle{}
\shorttitle{}
\ccode{}
\subject{}
\speaker{}
\spemail{}
\author{}
\email{}
\flag{}
\season{}
\date{}{}{}
\dateend{}{}{}
\conference{}
\place{}
\attn{}
\morelink{}

\begin{document}
\end{document}
```

### Overview

The document class `lecture` calls this class file. Options for the class are as outlined below.

Only setting a title is compulsory. All other data (e.g. subtitle, course code, speaker, dates, seasons, author etc. are optional.)
Some of these are used to set up the head of your document (e.g. season), headers of your pages (e.g. short title) and pdf attributes (e.g. subject data is only for the pdf metadata).

Take a look at the [Sample.tex](Sample/Sample.tex) file for an example of how these lines are used in a source file and for details of exactly what each command does.
Also look at the [Sample.pdf](Sample/Sample.pdf) output file to see how (great) things will look in the end.

**NB** Not all commands are shown in the sample files though most are.

**NB** The season command and the dates (single date or start and end dates) are mutually exclusive with the season taking precedence. You can set either Summer 2017 (season) or 24th June, 2017 (single date) or 24th June 2017--25th June 2017 (start and end dates).

### Options

#### Compulsory

The following are primary options that must compulsorily be included. Pick one from each set below:

1. The **language** of your document:
- `english`
- `french`
- `italian` (see *acknowledgements* and *the road ahead*)
- `usenglish` (same as english except for the mm/dd/yyyy format)
- `russian` (this automatically loads Cyrillic support)

2. The **type** of your lecture notes:
- `seminar` usually for single class/session/seminar/lecture period
- `course` for a collection of lectures (over a semester or over a few days)
- `talk` for brief notes for speakers (or any other use you can think of for condensed, two-column layouts)

**NB** Please delete all aux files and then compile if you decide to change languages halfway through. Compile twice to update TOC in case of `course` type documents.

#### Optional

You can also include secondary options for your document. Again, pick one from each set below:

1. Customise page headers as needed (default: current/next sections and subsections):
- `headertitle` to display the main title/short alternative title
- `headersection` to display the current/next section as appropriate
- `headersubsection` to display the current/next subsection as appropriate
- `headerno` for a blank header (footers still display page numbers)

2. Customise theorem numbering as needed:
- `theoremnosection`
- `theoremsection`
- `theoremsubsection`

3. Choose if you want to start every new section on a new page/new right-hand page:
- `cleardoublepage`
- `nocleardoublepage`

4. Optimise your document for printing:
- `oneside`
- `twoside`

5. Choose between one- and two-column layouts:
- `onecolumn`
- `twocolumn`

### Commands

There are some additional commands you can use _inside your document_, i.e. within `\begin{document}` and `\end{document}`, besides those which are already part of the blueprint given above:

1. `\lecture[duration]{dd}{mm}{yyyy}` for use in `course` type documents for providing information about lectures in the margin
2. `\separator` for use in `talk` type documents to draw a visually helpful horizontal separator line
3. `\tosay{message}` for use in `talk` type documents to print messages inside a box to help recall important data
4. `\margintext{message}` to make useful notes in the margin
5. `\\` at the start of a paragraph to give it a line break and remove any indentation
6. `\nl ` at the start of a paragraph without either a line break or an indent (note the space following the command)
7. `\runin{}` as a handy approach to print texts in small caps (especially useful to start new sections/chapters/parts of a document)
8. `\morelink{}` to add a _For more visit `_______`._ link in the footer of the first page.

### Dependencies

`hyperref` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `mathtools` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `csquotes` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `microtype` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `amsmath` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `booktabs` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `multirow` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `kpfonts` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `fancyhdr` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `mparhack` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `tikz` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `mathdots` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `xfrac` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `faktor` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `cancel` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `babel`

### Version history

### 2.4
**NB** This version may introduce a breaking change if you use the `\Proj` command. Use `\Projection` instead.
- Russian translations courtesy of Aleksei Kozharin.
- `\Proj` command changed to `\Projection` to prevent conflict with Russian Babel.
- Fontenc T1, T2A support (being loaded conditionally only when the document language is  russian ).

#### 2.3.1
- Fixed a major bug that would prevent compilation while using `english` as the language option.

#### 2.3
- A new command to add a more link in the footer of the first page
- Both `course` and `seminar` type documents now support up to subsections. (Because of their nature `talk` type documents do not support such layering.)

#### 2.2
- Title data footnotes will no longer mention '(speaker)' unless the author's email is also specified
- Added spacing around the em dash between the course code and title at the head of the document
- Improved styling for the explicit line break character
- Improved caption style
- **New command** The `\\` command provided by this class adds a new paragraph with a line break and without an indent. Use this to mark the _start_ of a new paragraph rather than the end of the previous one:
<pre>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porttitor et lectus.

\\Nam orci leo, tincidunt id convallis eu, luctus id nisi...
</pre>
- **New command** The `\nl` command provided by this class adds a new paragraph without indent or a line break. Use this same as the previous command but with a space after the command itself.
- **New command** The `\runin{}` command provided by this class adds small caps. This can be done manually but is a handy approach that is especially useful to start new sections/chapters/parts of a document.

#### 2.1
- All options except title are now optional
- New season data added (especially for a `course` that stretches across weeks/months)
- Support for the US date format mm/dd/yyyy
- French translation improvements

#### 2.0
- Blank header (`headerno`) bug fixed
- Improved default headers

#### 1.2
- French language support

#### 1.1
- Improved default headers

#### 1.0
- Initial release

## The road ahead

### Contributions

1. Translations are welcome and appreciated.
2. General suggestions for improvement are welcome as well.

Either fork this project and submit a pull request or, *only in case of translations*, <a href="mailto:hello@vhbelvadi.com">drop me an e-mail</a> with the relavant translations and specify how you wish to be credited.

### Known errors

1. <s>Not specifying a custom page header results in ugly defaults.</s>
2. <s>Using the `headerno` option messes up page header text dimensions.</s>
3. <s>Flag text, speaker's name and e-mail are *not* optional (yikes).</s>
4. The `\lecture[duration]{dd}{mm}{yyyy}` command does not work for the `russian` language option. However, `\margintext{message}` can be used instead to achieve a similar output.

### Improvements/roadmap

1. <s>The `headerno` and a couple of other options with minor errors will be corrected over time.</s>
2. <s>Not having a speaker, i.e. if the author == speaker, there is no need to mention '(scribe)' in the footer.</s>
3. A .gitignore will be added at some point just to make it simpler to clone this repo.
4. An option system that lets users specify if they prefer to use various packages regardless of pdfTeX support and then loads certain packages accordingly.
5. Errors that crop up from time to time will be set right (since I use this class myself to teach at University) and this will go on so long as I keep using it.
6. Package dependencies will not reduce. This type of collaboration is what LaTeX packages are for and they're free. When (and if) some package drops support we can think of bridging the code.

## End notes

### License

This project is licensed under the MIT License. See the [LICENSE.md](LICENSE.md) file for details.

### Acknowledgments

Thanks to [Stefano Maggiolo](http://blog.poormansmath.net/) for initially helping me kickstart this and for his Italian translations. Thanks to [Aleksei Kozharin](https://github.com/vhbelvadi/LaTeX-lecture-notes-class/pull/2/commits/34301290ff554b446fc755fa4cc813b701f63a2c) for Russian translations.

See the [release article](http://vhbelvadi.com/latex-lecture-notes-class/) for more.
