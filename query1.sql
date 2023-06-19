select paciente.nome, paciente.data_nascimento, endereco.estado, endereco.municipio, endereco.bairro, tipo_sanguineo.nome as tipodesangue
from paciente, endereco, tipo_sanguineo 
where paciente.endereco_id = endereco.endereco_id and (tipo_sanguineo.tipo_sanguineo_id = paciente.tipo_sanguineo_id)

