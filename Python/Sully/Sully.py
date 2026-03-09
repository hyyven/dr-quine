from subprocess import run

STRR = "from subprocess import run{0}{0}STRR = {1}{2}{1}{0}{0}def main() -> int:{0}	i: int = {3}{0}	if (i < 0):{0}		return (0){0}	f_name: str = f{1}Sully_{{i}}.py{1}{0}	with open(f_name, {1}w{1}) as f:{0}		f.write(STRR.format(chr(10), chr(34), STRR, i - 1)){0}{0}	run([{1}python3{1}, f{1}Sully_{{i}}.py{1}]){0}	return (0){0}{0}if __name__ == {1}__main__{1}:{0}	main()"

def main() -> int:
	i: int = 5
	if (i < 0):
		return (0)
	f_name: str = f"Sully_{i}.py"
	with open(f_name, "w") as f:
		f.write(STRR.format(chr(10), chr(34), STRR, i - 1))

	run(["python3", f"Sully_{i}.py"])
	return (0)

if __name__ == "__main__":
	main()