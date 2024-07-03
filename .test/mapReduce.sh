cd Python/word_count/LLMapReduce
sed -e 's/\(.*\)\/\(.*\)$/..\/..\/..\/data\/word_count\/\2 test_output\/\2.out/' input.txt > testin.txt
mkdir test_output
python3 top5overall_map.py testin.txt test_output
python3 top5overall_reduce.py test_output test_out.json
cat test_out.json.csv