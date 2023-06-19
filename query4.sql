select exame_id, paciente.nome as Paciente, enfermeiro.nome as enfermeiro, data_exame as Data
from exame, paciente, enfermeiro
where exame.paciente_id = paciente.paciente_id and exame.enfermeiro_id = enfermeiro.enfermeiro_id