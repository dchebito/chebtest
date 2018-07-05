awk '			\
BEGIN			\
{			\
	srand();	\
}			\
			\
{			\
	for (i = 1; i <= NF; ++i)				\
	{							\
		r = int(rand() * 16);				\
		if (r == 5)					\
			sub(",", ", gosh, ", $i);		\
		else if (r == 6)				\
			sub(",", ", damn, ", $i);		\
		else if (r == 7)				\
			sub(",", ", crap, ", $i);		\
		else if (r == 8)				\
			sub(",", ", basically, ", $i);		\
		else if (r == 9)				\
			sub(",", ", right,", $i);		\
		else if (r == 10)				\
			sub(",", ", you know,", $i);		\
		else if (r == 11)				\
			sub(",", ", I mean,", $i);		\
		else if (r == 12)				\
			sub(",", ", uhm,", $i);			\
		else if (r == 13)				\
			sub(",", ", well,", $i);			\
		else if (r == 14)				\
			sub(",", ", okay,", $i);		\
		else if (r == 15)				\
			sub(",", ", actually,", $i)		\
	}							\
	print $0						\
}'

