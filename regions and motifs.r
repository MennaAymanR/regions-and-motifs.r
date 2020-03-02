seq<- readline(prompt = "please enter the sequence")
n <- as.integer(readline(prompt = "enter the value of n"))
seq_count<- nchar(seq)
last_k_mer<- seq_count - n +1
all_sub_string<- substring(seq,first = 1:last_k_mer, last=n:seq_count)
table_string<- table(all_sub_string)
table_string<- data.frame(table_string)
table_string$all_sub_string[table_string$Freq==max(table_string$Freq)]
