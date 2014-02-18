#Foreward
If you are reading this, perhaps you already realise how powerful data is. Perhaps you don't -- I will mention, then /why/ data has the power it does.
Having been participant in several hackathons, the first thing you notice about successful projects is that they are backed by great data.
Data is a collection of information, and the power of data manifests itself as a result of its uniformity. Properly orgnised data can be dealt with with
only a few simple rules to produce an effective and interesting product.

For example, the Foreign and Commonwealth Office maintains a list of all its detatchments around the world. Five or so significant lines of Javascript
and a Google Maps library later and the processed data is used to produce an interactive map of all the FCO buildings around the world.

When people interact with these data in this way, they are viewing the whole picture in a way that cannot normally be accessed, they
are being enabled by the application to interact with all the information present in the document at once, which is very empowering.

What this document will deal with is not what can be done with data in a very small time, reading about the hackathons of [Rewired State] (http://rewiredstate.org/)
is enough testament to what power data has.

Instead I will talk mostly about the perhaps somewhat arcane seeming process of formatting data in a way that is 'consumable' by those who want to use your data.

[1] Identifying Useful Data
[2] Producing a Usable Data Release
	[I] Formatting Data
	[II] Documenting Data
[3] Living Data-- an Application Programming Interface

#Identifying Useful Data
A very common question for agencies wishing to release data is "Which data do we release?". It is a difficult question to answer, rather like
"Which science is most important for research?". In many ways, data is like undiscovered knowledge-- it is very hard to say /what/ great things
can be done with data before it is done, and as such great things may be done with data that no-one assumed to be important.

The most diplomatic way of dealing with this is to release /all/ of your data. It is understandable that you could be taken aback by such a proposal,
surely, it is a great undertaking to spend the time abiding by data best practice to release all of your data sets?

One of most important aspects of data is that data has power, regardless of what format it is released in. Bad data is /infinitely/ better than
no data, and people interested in using your data will often band together to clean and 'expose' an untidy dataset in order to make it usable, 
[They Work for You] (http://theyworkforyou.com) is a great example of this as it is the greatest place to find parliamentary data, most of
which is gathered by systematically downloading parts of the parliamentary website and processing them. This is considered a worst-case scenario
for data collection, but it still happens and allows They Work for You to provide the excellent insight into parliamentary activity it does.

Such projects, however are rare and in many cases it will come down to you, the agency releasing the data to produce good data which means
you still need to identify the most important datasets. First, release all the data you have in any available good format (practises on this
will be mentioned later) then, ask around: make a blog for your agencies' data and talk about the data sets you have and request comment by
email or other system. Listen to what people are interested in making and the data they are using or would like to use
and priorotise these datasets.

In short, all datasets are useful in the present or the future, but some datasets are more important than others, and these should be
improved after release with extra care taken with their quality to allow users to greater harness the information in the data.

#Producing a Usable Data Release
Even amongst programmers and data scientists, the power of data to produce something amazing in a short time is hard to explain, but
not often discussed. Good data can do amazing things in a short time firstly because of the information contained within the data
that is released and reused by an application of it, and second and just as importantly because that data is uniformly described
in a way that is simple to process, and thus the rules of the program that processes the data can be simple and concise.

A dataset may be a treasure trove of information, a human reader may be taken aback
by reading one or two records, but if the table is mainly a natural language (English) description of a concept in the first column
rather than spread across uniformly labelled columns, that data will remain unusable without great funding and effort-- the problem
of the understanding of human language is one not yet sufficiently solved in Computer Science to allow any typical driven data user, even
with great skill to be able to use the data contained within prose in much of a meaningful way.

A good data release has two further parts to it: data that is described in a way that allows simple description of its processing, and
second, good documentation or labelling of data such that someone looking to use it can understand the meaning of the symbols in the data.

##Formatting Data
As I have mentioned so many times before, uniformity and simplicity are key in good data formatting to allow the simplest possible description of how
the data will be processed. An important point in this regard is that it may not be the data itself always that is the problem in the data's
'consumability'; formats like XLS (Microsoft Excel files) appear to be simple, tabular data when opened in the program they were produced by,
but opening such a file with a simple text editor like Notepad reveals that their file structure is rather complex.

If you are interested you can read the [relevant Wikipedia article] (https://en.wikipedia.org/wiki/Microsoft_Excel_file_format#File_formats) on the XLS file,
which makes note that the Microsoft Excel format (XLS) is a "binary" and "proprietary" format. Binary descriptions, especially proprietary binary descriptions
of data are not great for transparency because even humans very skilled in binary protocols find it difficult to interpret the meaning of raw binary data.

===================================================================================================================================================
000007C0   01 00 00 00  F5 FF 20 00  00 F4 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  02 00 00 00  F5 FF 20 00  ...... ............ .......... .
000007E0   00 F4 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  02 00 00 00  F5 FF 20 00  00 F4 00 00  00 00 00 00  ........... .......... .........
00000800   00 00 C0 20  E0 00 14 00  00 00 00 00  F5 FF 20 00  00 F4 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  ... .......... ............ ....
00000820   00 00 00 00  F5 FF 20 00  00 F4 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  00 00 00 00  F5 FF 20 00  ...... ............ .......... .
00000840   00 F4 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  00 00 00 00  F5 FF 20 00  00 F4 00 00  00 00 00 00  ........... .......... .........
00000860   00 00 C0 20  E0 00 14 00  00 00 00 00  F5 FF 20 00  00 F4 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  ... .......... ............ ....
00000880   00 00 00 00  F5 FF 20 00  00 F4 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  00 00 00 00  F5 FF 20 00  ...... ............ .......... .
000008A0   00 F4 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  00 00 00 00  F5 FF 20 00  00 F4 00 00  00 00 00 00  ........... .......... .........
000008C0   00 00 C0 20  E0 00 14 00  00 00 00 00  F5 FF 20 00  00 F4 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  ... .......... ............ ....
000008E0   00 00 00 00  F5 FF 20 00  00 F4 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  00 00 A4 00  01 00 20 00  ...... ............ .......... .
00000900   00 00 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  01 00 2B 00  F5 FF 20 00  00 F0 00 00  00 00 00 00  ........... ......+... .........
00000920   00 00 C0 20  E0 00 14 00  01 00 29 00  F5 FF 20 00  00 F0 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  ... ......)... ............ ....
00000940   01 00 2C 00  F5 FF 20 00  00 F0 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  01 00 2A 00  F5 FF 20 00  ..,... ............ ......*... .
00000960   00 F0 00 00  00 00 00 00  00 00 C0 20  E0 00 14 00  01 00 09 00  F5 FF 20 00  00 F0 00 00  00 00 00 00  ........... .......... .........
00000980   00 00 C0 20  E0 00 14 00  00 00 A5 00  01 00 20 00  00 0C 00 00  00 00 00 00  00 00 C0 20  93 02 04 00  ... .......... ............ ....
000009A0   00 80 00 FF  93 02 04 00  10 80 03 FF  93 02 04 00  11 80 06 FF  93 02 04 00  12 80 04 FF  93 02 04 00  ................................
000009C0   13 80 07 FF  93 02 04 00  14 80 05 FF  60 01 02 00  01 00 85 00  0E 00 5B 49  00 00 00 00  06 00 53 68  ............`.........[I......Sh
000009E0   65 65 74 31  8C 00 04 00  2C 00 2C 00  C1 01 08 00  C1 01 00 00  54 8D 01 00  EB 00 5A 00  0F 00 00 F0  eet1....,.,.........T.....Z.....
00000A00   52 00 00 00  00 00 06 F0  18 00 00 00  00 04 00 00  02 00 00 00  01 00 00 00  01 00 00 00  01 00 00 00  R...............................
00000A20   01 00 00 00  33 00 0B F0  12 00 00 00  BF 00 08 00  08 00 81 01  09 00 00 08  C0 01 40 00  00 08 40 00  ....3.....................@...@.
00000A40   1E F1 10 00  00 00 0D 00  00 08 0C 00  00 08 17 00  00 08 F7 00  00 10 FC 00  20 20 BC 14  00 00 57 05  ........................  ....W.
00000A60   00 00 1F 00  00 46 6F 72  65 69 67 6E  20 61 6E 64  20 43 6F 6D  6D 6F 6E 77  65 61 6C 74  68 20 4F 66  .....Foreign and Commonwealth Of
00000A80   66 69 63 65  11 00 00 45  6C 65 63 74  72 69 63 69  74 79 20 2D  20 6B 57 68  09 00 00 53  69 74 65 20  fice...Electricity - kWh...Site
00000AA0   4E 61 6D 65  07 00 00 55  74 69 6C 69  74 79 04 00  00 55 6E 69  74 04 00 00  44 61 74 65  05 00 00 30  Name...Utility...Unit...Date...0
00000AC0   30 3A 30 30  05 00 00 30  30 3A 33 30  05 00 00 30  31 3A 30 30  05 00 00 30  31 3A 33 30  05 00 00 30  0:00...00:30...01:00...01:30...0
00000AE0   32 3A 30 30  05 00 00 30  32 3A 33 30  05 00 00 30  33 3A 30 30  05 00 00 30  33 3A 33 30  05 00 00 30  2:00...02:30...03:00...03:30...0
00000B00   34 3A 30 30  05 00 00 30  34 3A 33 30  05 00 00 30  35 3A 30 30  05 00 00 30  35 3A 33 30  05 00 00 30  4:00...04:30...05:00...05:30...0
00000B20   36 3A 30 30  05 00 00 30  36 3A 33 30  05 00 00 30  37 3A 30 30  05 00 00 30  37 3A 33 30  05 00 00 30  6:00...06:30...07:00...07:30...0
00000B40   38 3A 30 30  05 00 00 30  38 3A 33 30  05 00 00 30  39 3A 30 30  05 00 00 30  39 3A 33 30  05 00 00 31  8:00...08:30...09:00...09:30...1
00000B60   30 3A 30 30  05 00 00 31  30 3A 33 30  05 00 00 31  31 3A 30 30  05 00 00 31  31 3A 33 30  05 00 00 31  0:00...10:30...11:00...11:30...1
00000B80   32 3A 30 30  05 00 00 31  32 3A 33 30  05 00 00 31  33 3A 30 30  05 00 00 31  33 3A 33 30  05 00 00 31  2:00...12:30...13:00...13:30...1
00000BA0   34 3A 30 30  05 00 00 31  34 3A 33 30  05 00 00 31  35 3A 30 30  05 00 00 31  35 3A 33 30  05 00 00 31  4:00...14:30...15:00...15:30...1
00000BC0   36 3A 30 30  05 00 00 31  36 3A 33 30  05 00 00 31  37 3A 30 30  05 00 00 31  37 3A 33 30  05 00 00 31  6:00...16:30...17:00...17:30...1
00000BE0   38 3A 30 30  05 00 00 31  38 3A 33 30  05 00 00 31  39 3A 30 30  05 00 00 31  39 3A 33 30  05 00 00 32  8:00...18:30...19:00...19:30...2
00000C00   30 3A 30 30  05 00 00 32  30 3A 33 30  05 00 00 32  31 3A 30 30  05 00 00 32  31 3A 33 30  05 00 00 32  0:00...20:30...21:00...21:30...2
00000C20   32 3A 30 30  05 00 00 32  32 3A 33 30  05 00 00 32  33 3A 30 30  05 00 00 32  33 3A 33 30  13 00 00 4B  2:00...22:30...23:00...23:30...K
00000C40   69 6E 67 20  43 68 61 72  6C 65 73 20  53 74 72 65  65 74 0B 00  00 45 6C 65  63 74 72 69  63 69 74 79  ing Charles Street...Electricity
00000C60   03 00 00 6B  57 68 0A 00  00 32 30 31  30 2D 30 37  2D 31 39 0A  00 00 32 30  31 30 2D 30  37 2D 32 30  ...kWh...2010-07-19...2010-07-20
00000C80   0A 00 00 32  30 31 30 2D  30 37 2D 32  31 0A 00 00  32 30 31 30  2D 30 37 2D  32 32 0A 00  00 32 30 31  ...2010-07-21...2010-07-22...201
---  elec00.xls       --0xC80/0x94400--------------------------------------------------------------------------------------------------------------
===================================================================================================================================================
Part of the binary description of [FCO Energy Consumption] (http://data.gov.uk/dataset/fco-energy-consumption) (fixed plaintext)

================================
Foreign and Commonwealth Office
Electricity - kWh


Site Name,Utility,Unit,Date,00:00,00:30,01:00,01:30,02:00,02:30,03:00,03:30,04:00,04:30,05:00,05:30,06:00,06:30,07:00,07:30,08:00,08:30,09:00,09:30,10:00,10:30,11:00,11:30,12:00,12:30,13:00,13:30,14:00,14:30,15:00,15:30,16:00,16:30,17:00,17:30,18:00,18:30,19:00,19:30,20:00,20:30,21:00,21:30,22:00,22:30,23:00,23:30
King Charles Street,Electricity,kWh,2010-07-19,333.5,325.2,329.4,322.5,323.3,323,328.8,329.7,341.1,340.4,355.2,383.9,425.9,434.1,475.8,519,552.7,585.1,597.5,589.2,596.3,598.7,618.5,615,605.2,614,607.6,596.6,599.1,588.1,589.4,574.2,615.7,561.2,505.8,468.1,449.9,422.5,402.4,391.1,390.3,385.5,377,372.6,361.9,357.6,352.5,355.3,22187.4
King Charles Street,Electricity,kWh,2010-07-20,365.3,357,357.7,354.5,356.9,355.2,365.5,359,366.5,375.6,389.1,387.8,400.3,411.8,484.2,526.3,574.9,600.9,609.3,612.4,611.8,617.2,636.4,628.4,621.9,619.5,626,616.8,611.9,601.2,593,584.5,556.4,523.5,468.7,442.9,425.4,398,383.1,372.9,366.5,364,357.4,353.9,348.6,341.1,338.2,336.3,22355.7
King Charles Street,Electricity,kWh,2010-07-21,351,340,340.3,338.3,340.9,338.3,346.4,344.1,352.6,355.1,374.5,387.4,440.1,458.8,499.2,549.2,586.8,601.1,615.4,626.6,609.6,611.5,634.3,624.5,613.7,616.9,614.2,608.7,601.3,595.1,589.4,579.8,544.6,518.2,471.9,437.8,418.4,395.7,382.2,360.2,350.6,350,353.6,346.1,337.2,335.4,331.7,331.7,22150.4
King Charles Street,Electricity,kWh,2010-07-22,341.4,329.7,332.9,332.6,330.7,327.8,338.9,334.1,342.8,348.9,369.2,391.5,428.7,440,486.4,535.8,579.8,609.4,612.9,606,602.8,588.2,611.8,607.1,599.2,596.6,600.3,596.3,588.1,585.3,573.7,566.4,540,506.7,466.6,434.8,410.8,385.4,374.5,362.6,357.2,359.2,352.2,343.8,336.8,331.8,320.9,331,21749.6
================================
Part of the CSV description of [FCO Energy Consumption] (http://data.gov.uk/dataset/fco-energy-consumption) (plaintext)

Above are two different descriptions of the parts of the same dataset. The first is the binary XLS format, the second is the plaintext CSV format. Plaintext means that
the information is stored as text with no (raw) binary information mixed in. The advantage of this is apparent by comparing the two figures. 

The XLS format is being viewed in the
program `hexedit` which is a program designed for manipulation of binary data. The technical details are not particularly important, but the first column shows the offset
(distance) from the beginning of the file and is written in hexadecimal (a number format like 1-9 that better describes binary data). This is followed by several hexadecimal columns
grouped into four to represent each group of four bytes. The last column shows the binary data interpreted as text, the uninterpretable data is left as a full stop. The meaning of this
document will probably be unintelligable, because it is. Binary filetypes such as this are ususally very difficult to understand unless you have the specification which defines the format and
how it is read and a program that implements it. Nowadays, Microsoft has moved on from the XLS format to newer, XML based formats like .xlsx and .xml.

The second document does not require any extra display to show, since it is just text. Even the technically inept, given some time will notice that the document is composed of
a title and then a series of rows, where columns are separated by commas. That is all there is to the CSV format -- CSV stands for 'comma separated values'. The format
is instantly identifiable with no context or explanation, and simple to express programatically.

Perhaps you already knew that XML is a text-based format, perhaps, then you might ask "Why CSV over XLSX?". First: though the XML in the XLSX is text-based, the .xlsx file
you find on your hard drive is not readable by a text editor such as Notepad, attempting to open it with Notepad will present you with a mess of symbols. This is because
the file is a .zip file (a binary, compressed format) containing several files which are /themselves/ XML, here is a list of the files inside of the same FCO document in XLSX:

=======
" zip.vim version v27
" Browsing zipfile /home/thomas/Downloads/elec00.xlsx
" Select a file with cursor and press ENTER

_rels/.rels
xl/_rels/workbook.xml.rels
xl/worksheets/sheet1.xml
xl/sharedStrings.xml
xl/workbook.xml
xl/styles.xml
docProps/app.xml
docProps/core.xml
[Content_Types].xml
====
List of files inside elec00.xlsx (plaintext)

Opening sheet1.xml presents us with XML data, which looks like this:


===
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<worksheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"><sheetPr filterMode="false"><pageSetUpPr fitToPage="false"/></sheetPr><dimension ref="A1:BA1318"/><sheetViews><sheetView colorId="64" defaultGridColor="true" rightToLeft="false" showFormulas="false" showGridLines="true" showOutlineSymbols="true" showRowColHeaders="true" showZeros="true" tabSelected="true" topLeftCell="A1" view="normal" windowProtection="false" workbookViewId="0" zoomScale="100" zoomScaleNormal="100" zoomScalePageLayoutView="100"><selection activeCell="A1" activeCellId="0" pane="topLeft" sqref="A1"/></sheetView></sheetViews><sheetFormatPr defaultRowHeight="12.8"></sheetFormatPr><cols><col collapsed="false" hidden="false" max="1" min="1" style="0" width="29.219387755102"/><col collapsed="false" hidden="false" max="2" min="2" style="0" width="9.62755102040816"/><col collapsed="false" hidden="false" max="3" min="3" style="0" width="4.76020408163265"/><col collapsed="false" hidden="false" max="4" min="4" style="0" width="10.4591836734694"/><col collapsed="false" hidden="false" max="5" min="5" style="0" width="6.01020408163265"/><col collapsed="false" hidden="false" max="6" min="6" style="0" width="7.26020408163265"/>
===
Part of the XML description of [FCO Energy Consumption] (http://data.gov.uk/dataset/fco-energy-consumption) (plaintext)

Though XLSX contains text-based files, the format is anything but simple and additionally contains non-data information that is specific to the XLS format such as text colour,
formulas and worksheets that must be separated from the important data; you can observe these in all the files other than workbook.xml, which contain such 'metadata' -- data concering the data.
In addition, the XML format is complex to describe, and as such requires use of an XML library, though this is not a huge problem. Simple, expressive XML can also make good data.
