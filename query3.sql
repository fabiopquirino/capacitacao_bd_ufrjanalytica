select consulta_id, paciente.nome as Paciente, medico.nome as Médico, data_consulta as Data
from consulta, paciente, medico
where consulta.paciente_id = paciente.paciente_id and consulta.medico_id = medico.medico_id