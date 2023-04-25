# NovelWriter

##  Overview

This tool was motivated by the desire to write stories that made it easy to post my stories to multiple websites with different versions (use your imagination).

Different websites have different rules for HTML that they permit, so this restricts what can be submitted.  However, this generally means having to reformat your story, either in word, or in the website's "editor", both of which are pains.  With this tool, you annotate your story's text with styles that can then be applied, consistently, based on the target website.

The other motivation, the different versions, can arise from content standards between websites, or of what gets released with these different versions.

This tool solves both.  It will also auto-number chapters, and split them into multiple files.

## WEBSITES/Formats

Several formats are supported (or intended to be supported)

###  Simple Text

Simple text, strips all formatting.

###  Latex

Support PENDING

###  Markdown

Support PENDING

###     HTML

Straight up HTML, with or without CSS.

###     AFF (Adult Fanfiction)

Tentative, not tested

###     AO3 (Archive of our Own)

Works witH CSS

###     FFN (Fanfiction.net)

Works.

###     RTF

Support PENDING

## Versions (Slots)

NovelWriter has the notion of "slots", for the versions, 1-16.  What these slots mean is up to the story author.  When specifying a slot, a simple "0" is the wildcard, specifying all slots.

##  Command Line 



##  Syntax

This is the general command syntax.  Commands and slot specifiers start with "@".

###  Comments

All comments are for the whole line, start with "#".

###  Special Characters

Special characters are entered using [], so....

    [:ch]       Umlat
    [~ch]       Tilde
    ['ch]       Accent
    [`ch]       Grave
    [^ch]       Circumflex
    [#code]     Unicode codepoint
    [?code]     Html character name


### Inline Formatting

    /text/      Italics
    *text*      Bold
    -text-      Strikeout
    ^text^      Superscript
    ~text~      Subscript
    _text_      Underline

### Slot Specifiers

The slot specifier will change the text's slot affinity.  It is included or excluded based on where the specified slot is in relationship to this number.  
    
    @0      Wildcard, all slots
    @1      First slot ONLY
    @2+     Second slot and above
    @3-     Third slot and below
    @1,3    First and Third slot

*NOTE*  A bug exists, so always end a file in all slots (ie @0). 

### Inline slot specifier

An inline slot specifier is permissible.  Wrap the text in curly braces, use "|" to separate.  Note, if a higher slot is ran than are used, the highest slot will be used.

    Text {slot1|slot2|slot3....slotN}  more text.
    
If the novelwriter is ran to slot M, the program will select the appropriate text from the slot specifier.  As noted above, if M>N, then N is used.

### Commands

All Commands start with "@", pattern is @command{arg0}{arg1}....{argN}.  Every command can be prefixed with a slot specifier.

#### Command List

##### Act (NYI)

	@act{ <title> }
	
An "act". 

*This feature is not yet implemented!*

##### Biblio (NYI)

	@biblio{ <name> }{ <bibliography> }
	
A bibliography entry.

*This feature is not yet implemented!*

##### Chapter

	@chapter{ <title> }
	
A chapter.

##### Footnote

	@footnote{ <footnote> }
	
Inserts a footnote into the text.

##### Include

	@include{ <file1>}{<file2>}...{<fileN>}
	
Includes one or more files, as if it's the same.

##### Macros

	@macros{ <@macro1> ...  }

Define macros for later use.  See macros section.

##### Ordered List (NYI)

	@olist{<entry1>}{<entry2>}...{<entryN>}
	
An ordered list.

##### Part
	
	@part{ <title> }
	
A "part", typically a collection of chapters.

##### Section

	@section{ <title> }
	
A "section", a smaller bit of a chapter.

##### Story

	@story{ <title> }{ <author> }
	
The story title, including an author.  Recommended to be near the beginning.

##### Styles

	@styles{ @style1 ... @styleN }
	
Defines styles for later use, see styles section.

##### Table

	@table{<row1> <row2> ... <rowN>}
	
A table.

##### Table Header

	@thdr{<col1>}{<col2>}...{<colN>}
	
A header row for the table.  One column per argument.

##### Table Row

	@trow{<col1>}{<col2>}...{<colN>}
	
A regular row for the table.  One column per argument.

##### Unordered List (NYI)

	@ulist{<entry1>}{<entry2>}...{<entryN>}
	
An unordered list.

### Styles

A style is just that, a bit of standardized style of text.  This can be inline or block in nature.  

### Macros






