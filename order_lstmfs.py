from random import seed, choice

n = int(input("numero? "))
seed(n)

lstmfs = open('all-lstmf', 'r')
train = open('train-lstmf', 'w')
eval = open('eval-lstmf', 'w')


lines = lstmfs.read().split('\n')

count = len(lines)

_10 = count // 10

e = []
for i in range(_10):
    selection = choice(lines)
    e.append(selection)

for line in lines:
    if len(line) == 0:
        continue
    f_line = f"/home/fran/trainig_data/training/ground-truth/{line}\n"
    if line in e:
        eval.write(f_line)
    else:
        train.write(f_line)

lstmfs.close()
train.close()
eval.close()
