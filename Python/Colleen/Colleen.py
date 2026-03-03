# outside comment

def colleen() -> str:
	return "# outside comment{0}{0}def colleen() -> str:{0}	return {1}{2}{1}{0}{0}def main() -> int:{0}	# inside comment{0}	strr: str = colleen(){0}	print(strr.format(chr(10), chr(34), strr), end={1}{1}){0}	return (0){0}{0}if __name__ == {1}__main__{1}:{0}	main()"

def main() -> int:
	# inside comment
	strr: str = colleen()
	print(strr.format(chr(10), chr(34), strr), end="")
	return (0)

if __name__ == "__main__":
	main()