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
		if (r == 7)					\
			sub(",", ", значит, ", $i);		\
		if (r == 8)					\
			sub(",", ", ну это, ", $i);		\
		else if (r == 9)				\
			sub(",", ", типа,", $i);		\
		else if (r == 10)				\
			sub(",", ", как бы,", $i);		\
		else if (r == 11)				\
			sub(",", ", понимаешь,", $i);		\
		else if (r == 12)				\
			sub(",", ", бля,", $i);			\
		else if (r == 13)				\
			sub(",", ", ээ,", $i);			\
		else if (r == 14)				\
			sub(",", ", блин,", $i);		\
		else if (r == 15)				\
			sub(",", ", как его,", $i)		\
	}							\
	print $0						\
}'

