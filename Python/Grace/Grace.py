STRR = "STRR = {1}{2}{1}{0}OPEN = lambda: open({1}Grace_kid.py{1}, {1}w{1}){0}FT_MAIN = lambda: OPEN().write(STRR.format(chr(10), chr(34), STRR)){0}{0}# comment{0}{0}FT_MAIN()"
OPEN = lambda: open("Grace_kid.py", "w")
FT_MAIN = lambda: OPEN().write(STRR.format(chr(10), chr(34), STRR))

# comment

FT_MAIN()