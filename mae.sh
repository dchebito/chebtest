awk '			\
BEGIN			\
{			\
	srand();	\
}			\
			\
{			\
	for (i = 1; i <= NF; ++i)				\
	{							\
		r = int(rand() * 24);				\
		if (r == 7)					\
			sub(",", ", pues, ", $i);		\
		else if (r == 8)				\
			sub(",", ", a ver, ", $i);		\
		else if (r == 9)				\
			sub(",", ", en plan ", $i);		\
		else if (r == 10)				\
			sub(",", ", digo, ", $i);		\
		else if (r == 11)				\
			sub(",", ", o sea,", $i);		\
		else if (r == 12)				\
			sub(",", ", entonces,", $i);		\
		else if (r == 13)				\
			sub(",", ", así que bueno,", $i);	\
		else if (r == 14)				\
			sub(",", ", bueno,", $i);		\
		else if (r == 15)				\
			sub(",", ", es que ", $i);		\
		else if (r == 16)				\
			sub(",", ", pues, eso,", $i);		\
		else if (r == 17)				\
			sub(",", ", eso,", $i)			\
		else if (r == 18)				\
			sub(",", ", en fin,", $i)		\
		else if (r == 19)				\
			sub(",", ", mae,", $i)			\
		else if (r == 20)				\
			sub(",", ", mi hermano, ", $i)		\
		else if (r == 21)				\
			sub(",", ", mi amigazo, ", $i)		\
		else if (r == 22)				\
			sub(",", ", gracias a Dios, ", $i)	\
	}							\
	print $0						\
}'

