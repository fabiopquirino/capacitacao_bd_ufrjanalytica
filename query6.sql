select nome, count(exame.enfermeiro_id) as Num_exames
from enfermeiro
left join exame on enfermeiro.enfermeiro_id = exame.enfermeiro_id
group by enfermeiro.enfermeiro_id