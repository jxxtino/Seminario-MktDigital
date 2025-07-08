CREATE TABLE IF NOT EXISTS 'Transacoes' (
    id INTEGER primary key,
    cliente TEXT NOT NULL,
    data_hora DATETIME,
    produtos VARCHAR(50),
    valor_total VARCHAR(100),
    quantidade DECIMAL(10, 2),
    categoria INT
);

CREATE TABLE IF NOT EXISTS 'Eventos' (
    id INTEGER PRIMARY KEY,
    cliente_id INTEGER NOT NULL,
    data_hora DATETIME,
    canal VARCHAR(50),
    campanha VARCHAR(100),
    tipo_evento TEXT,
    custo DECIMAL(10, 2),
    impressoes INTEGER,
    cliques INTEGER,
    visualizacoes INTEGER,
    nova_conversao INTEGER,
    receita_gerada DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Transacoes(id)
);