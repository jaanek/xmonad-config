Config { font = "-*-Fixed-Bold-R-Normal-*-13-*-*-*-*-*-*-*"
, bgColor = "black"
, fgColor = "grey"
, position = Top
, lowerOnStart = True
, commands = [ Run Weather "KARB" ["-t","Ann Arbor: <tempF>F","-L","18","-H","25","--normal","green","--high","red","--low","lightblue"] 36000
             , Run Network "eth0" ["-L","0","-H","32","--normal","green","--high","red"] 10
             , Run Network "eth1" ["-L","0","-H","32","--normal","green","--high","red"] 10
             , Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10
             , Run Memory ["-t","Mem: <usedratio>%"] 10
             , Run Swap [ ] 10
             , Run Date "%a %b %_d %Y %I:%M:%S" "date" 10
             ]
, sepChar = "%"
, alignSep = "}{"
, template = "%cpu% | %memory% * %swap% | %eth0% }{ %KARB% | <fc=#ee9a00>%date%</fc>"
}
