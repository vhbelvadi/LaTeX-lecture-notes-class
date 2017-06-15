# LaTeX class for lecture notes

[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)
[![Open Source Love](https://badges.frapsoft.com/os/mit/mit.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)

[![forthebadge](http://forthebadge.com/images/badges/built-with-science.svg)](http://forthebadge.com)

**Author:** V.H. Belvadi

**Website:** [http://vhbelvadi.com/](http://vhbelvadi.com/)

**Current release:** v1.1

**Project site:** [Click here to view](https://vhbelvadi.github.io/LaTeX-lecture-notes-class/) (You're probably already here)

**Description:** A LaTeX document class built for lecture notes for classes/seminars, entire courses or brief talks.

A detailed article about this class can be found on [the author's website](http://vhbelvadi.com/latex-lecture-notes-class/).
The same data condensed into brief notes about working with this class, for those who are familiar with this sort of thing, can be found here.

## Installing the class

Simply drop the `.cls` and `.sty` files into your LaTeX document tree.
On UNIX systems this is usually `~/texmf/` and is `C:\Users\user_name\texmf\` on Windows.

Although not necessary, it is highly recommended that you place these files inside their own folder with the tree `.../texmf/tex/latex/folder_name` for better package management<sup>1</sup>.

MikTex does things differently<sup>2</sup>: `C:\Users\user_name\Appdata\Local\MikTex\###\tex\latex\local\`.
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
\date{}{}{}
\dateend{}{}{}
\conference{}
\place{}
\attn{}

\begin{document}
\end{document}
```

### Overview

The document class `lecture` calls this class file. Options for the class are as outlined below.

Most of the data such as subtitle, course code, speaker, author etc. are optional.
These are used to set up the head of your document, headers of your pages and pdf attributes.
(The subject data, for example, is only for the metadata of your pdf output file.)

Take a look at the [Sample.tex](Sample/Sample.tex) file for an example of how these lines are used in a source file and for details of exactly what each command does.
Also look at the [Sample.pdf](Sample/Sample.pdf) output file to see how (great) things will look in the end.

### Options

#### Compulsory

The following are primary options that must compulsorily be included. Pick one from each set below:

1. The **language** of your document:

- `english`
- `italian` (see *acknowledgements* and *the road ahead*)

2. The **type** of your lecture notes:
- `seminar` usually for single class/session/seminar/lecture period
- `course` for a collection of lectures (over a semester or over a few days)
- `talk` for brief notes for speakers (or any other use you can think of for condensed, two-column layouts)

#### Optional

You can also include secondary options for your document. Again, pick one from each set below:

1. Customise page headers as needed:
- `headertitle` to display the main title/short alternative title (using this is recommended)
- `headersection` to display the current/next section as appropriate
- `headersubsection` to display the current/next subsection as appropriate
- `headerno` for no header separator line (needs more work, use at your own risk)

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

1. `\lecture[duration]{dd}{mm}{yyyy}` for use in `course` type documents (see [Sample.pdf](Sample/Sample.pdf)) for providing information about lectures in the margin
2. `\separator` for use in `talk` type documents to draw a visually helpful horizontal separator line
3. `\tosay{message}` for use in `talk` type documents to print messages inside a box to help recall important data
4. `\margintext{message}` to make useful notes in the margin

### Dependencies

`hyperref` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `mathtools` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `csquotes` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `microtype` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `amsmath` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `booktabs` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `multirow` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `kpfonts` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `fancyhdr` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `mparhack` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `tikz` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `mathdots` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `xfrac` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `faktor` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `cancel`

## The road ahead

### Contributions

1. Translations are welcome and appreciated.
2. General suggestions for improvement are welcome as well.

Either fork this project and submit a pull request or, *only in case of translations*, <a href="mailto:user@example.com">drop me an e-mail</a> with the relavant translations and specify how you wish to be credited.

### Known errors

1. ~Not specifying a custom page header results in ugly defaults.~
2. Using the `headerno` option messes up page header text dimensions.

### Improvements

1. The `headerno` and a couple of other options with minor errors will be corrected over time.
2. Errors that crop up from time to time will be set right (since I use this class myself to teach at University) and this will go on so long as I keep using it.
3. Package dependencies will not reduce. This type of collaboration is what LaTeX packages are for and they're free. When (and if) some package drops support we can think of bridging the code.

## End notes

### License

This project is licensed under the MIT License. See the [LICENSE.md](LICENSE.md) file for details.

### Acknowledgments

Thanks to [Stefano Maggiolo](http://blog.poormansmath.net/) for initially helping me kickstart this and for his Italian translations.

***

1. See [Stefan Kottwitz's answer on TeX SE](https://tex.stackexchange.com/a/1138) for more details.
2. [Stefan again](https://tex.stackexchange.com/a/2066) on MikTex on TeX SE.
