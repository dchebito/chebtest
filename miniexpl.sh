awk -F '[ ""'"'"'"]' '	\
BEGIN			\
{			\
	srand();	\
	flag = 0;	\
}			\
			\
{			\
	for (i = 1; i <= NF; ++i)				\
	{							\
		if ($i == "post__title")			\
			flag = 1;				\
								\
		if ($i == "post__text")				\
			flag = 1;				\
								\
		if ($i == "mw-redirect")			\
			flag = 1;				\
								\
		if ($i == "spoiler_text")			\
			flag = 1;				\
								\
		if ($i == "class=")				\
			flag = 0;				\
								\
		if (flag == 1)					\
		{						\
			r = int(rand() * 16);			\
			if (r == 8)				\
				sub(",", ", ну это, ", $i);	\
			else if (r == 9)			\
				sub(",", ", типа,", $i);	\
			else if (r == 10)			\
				sub(",", ", как бы,", $i);	\
			else if (r == 11)			\
				sub(",", ", понимаешь,", $i);	\
			else if (r == 12)			\
				sub(",", ", бля,", $i);		\
			else if (r == 13)			\
				sub(",", ", ээ,", $i);		\
			else if (r == 14)			\
				sub(",", ", блин,", $i);	\
			else if (r == 15)			\
				sub(",", ", как его,", $i)	\
		}						\
	}							\
	print $0						\
}'

