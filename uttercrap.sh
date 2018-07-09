awk -F '[ ]' '			\
BEGIN			\
{			\
	srand();	\
	FPAT = "([[:space:]]*[[:alnum:][:punct:][:digit:]]+)"; \
}			\
			\
{			\
	for (i = 1; i <= NF; ++i)				\
	{							\
		r = int(rand() * 22);				\
		if (r == 7)					\
			sub(",", ", literally,", $i);		\
		else if (r == 8)				\
			sub(",", ", kinda", $i);		\
		else if (r == 9)				\
			sub(",", ", sorta", $i);		\
		else if (r == 10)				\
			sub(",", ", well,", $i);		\
		else if (r == 11)				\
			sub(",", ", right,", $i);		\
		else if (r == 12)				\
			sub(",", ", you know,", $i);		\
		else if (r == 13)				\
			sub(",", ", uhm,", $i);			\
		else if (r == 14)				\
			sub(",", ", okay,", $i);		\
		else if (r == 15)				\
			sub(",", ", like", $i);			\
		else if (r == 16)				\
			sub(",", ", I mean,", $i);		\
		else if (r == 17)				\
			sub(",", ", you see,", $i);		\
		else if (r == 18)				\
			sub(",", ", believe me,", $i);		\
		else if (r == 19)				\
			sub(",", ", I guess,", $i);		\
		else if (r == 20)				\
			sub(",", ", or something", $i)		\
	}							\
	print $0						\
}'
