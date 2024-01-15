%let pgm=utl-drop-down-to-powershell-and-return-the-number-of-lines-in-a-file-to-wps;

Drop down to powershell and return the number of lines in a file to wps

github
http://tinyurl.com/35w74r3k
https://github.com/rogerjdeangelis/utl-drop-down-to-powershell-and-return-the-number-of-lines-in-a-file-to-wps


/**************************************************************************************************************************/
/*                                          |                                         |                                   */
/*          INPUT                           |             PROCESS                     |       OUTPUT (In SAS LOG)         */
/*                                          |                                         |                                   */
/*   d:/txt/records5                        |   Drop down to poweshell                |                                   */
/*                                          |                                         |                                   */
/*    github/rogerjdeangelis/utl-copy       |   Powershell output ro clipboard        |  Lines Words Characters Property  */
/*    github/rogerjdeangelis/utl-how        |                                         |  ----- ----- ---------- --------  */
/*    github/rogerjdeangelis/utl-powershell |   Get-Content -Path d:\txt\records5.txt |      5                            */
/*    github/rogerjdeangelis/utl-dropping   |      | Measure-Object -Line | clip;     |                                   */
/*    github/rogerjdeangelis/zip-and        |                                         |                                   */
/*                                          |                                         |                                   */
/*                                          |   filename clp clipbrd                  |                                   */
/*                                          |   data _null_ ;                         |                                   */
/*                                          |        infile clp;                      |                                   */
/*                                          |        input;                           |                                   */
/*                                          |        putlog _infile_ ;                |                                   */
/*                                          |    run;quit;                            |                                   */
/*                                          |                                         |                                   */
/**************************************************************************************************************************/

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/
filename ft15f001 "d:/txt/records5.txt";
parmcards4;
https://github.com/rogerjdeangelis/utl-copy
https://github.com/rogerjdeangelis/utl-how
https://github.com/rogerjdeangelis/utl-powershell
https://github.com/rogerjdeangelis/utl-dropping
https://github.com/rogerjdeangelis/zip-and
;;;;
run;quit;

/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

%utl_submit_ps64("
    Get-Content -Path d:\txt\records5.txt
       | Measure-Object -Line | clip;
   ");

%utl_submit_wps64x('
 filename clp clipbrd ;
 data _null_ ;
    infile clp;
    input;
    putlog _infile_ ;
 run;quit;
');

/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

NOTE: The file PS_PGM i

Get-Content -Path d:\txt\records5.txt       | Measure-Object -Line | clip


1         filename clp clipbrd;
2         data _null_;
3         infile clp;
4         input;
5         putlog _infile_;
6         run;

NOTE: The infile clp is:
      Clipboard


Lines Words Characters Property
----- ----- ---------- --------
    5


/*        _       _           _
 _ __ ___| | __ _| |_ ___  __| |  _ __ ___ _ __   ___  ___
| `__/ _ \ |/ _` | __/ _ \/ _` | | `__/ _ \ `_ \ / _ \/ __|
| | |  __/ | (_| | ||  __/ (_| | | | |  __/ |_) | (_) \__ \
|_|  \___|_|\__,_|\__\___|\__,_| |_|  \___| .__/ \___/|___/
                                          |_|
*/


REPO
----------------------------------------------------------------------------------------------------------------------------------------
https://github.com/rogerjdeangelis/utl-copy-excel-sheets-from-one-workbook-to-another-using-powershell
https://github.com/rogerjdeangelis/utl-drop-down-to-powershell-and-programatically-create-an-odbc-data-source-for-excel-wps-r-rodbc
https://github.com/rogerjdeangelis/utl-examples-of-drop-downs-from-sas-to-wps-r-microsoftR-python-perl-powershell
https://github.com/rogerjdeangelis/utl-how-to-remove-a-record-from-a-csv-file-in-place-with-powershell-fast
https://github.com/rogerjdeangelis/utl-powershell-unzip-one-meber-of-a-winzip-archive
https://github.com/rogerjdeangelis/utl_dropping-down-to-powershell-and-converting-doc-and-rtf-files-to-pdfs
https://github.com/rogerjdeangelis/zip-and-unzip-using-ms-powershell

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
