select nome, count(consulta.medico_id) as Num_Consultas
from medico
left join consulta on medico.medico_id = consulta.medico_id
group by medico.medico_id