DIM map%(44, 89)

DIM d AS STRING * 1

OPEN "mars.map" FOR BINARY AS #1
   FOR y% = 0 TO 44
      FOR x% = 0 TO 89
         GET #1, , d
         map%(y%, x%) = ASC(d)
   NEXT x%, y%
CLOSE

CLOSE 1

OPEN "map.h" FOR OUTPUT AS #1
PRINT #1, "#asm"
print #1, ""
print #1, "._map_data"
FOR panty% = 0 TO 4
   FOR pantx% = 0 TO 5
      o$ = ""
      FOR y% = 0 TO 8
         FOR x% = 0 TO 14
            o$ = o$ + format$(map%(panty% * 9 + y%, pantx% * 15 + x%)) + ","
         NEXT x%
      NEXT y%
      o$=left$(o$,len(o$)-1)
      PRINT #1, "    defb " + o$
   NEXT pantx%
NEXT panty%
print #1, ""
PRINT #1, "#endasm"
print #1, ""
CLOSE #1

SYSTEM

function format$(numero%)
	res$ = ltriM$(rtrim$(str$(numero%)))
	if len(res$)=1 then res$="  "+res$
	if len(res$)=2 then res$=" "+res$
	format$=res$
end function
