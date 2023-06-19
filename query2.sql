select medico.nome as Nome, especializacao.nome as Especialização, unidade.nome as Unidade
from medico, especializacao, unidade
where medico.especializacao_id = especializacao.especializacao_id and medico.unidade_id = unidade.unidade_id
UNION
select enfermeiro.nome as Nome, especializacao.nome as Especialização, unidade.nome as Unidade
from enfermeiro, especializacao, unidade
where enfermeiro.especializacao_id = especializacao.especializacao_id and enfermeiro.unidade_id = unidade.unidade_id