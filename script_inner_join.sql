-- Criando a tabela de clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- Criando a tabela de pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    valor DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Inserindo alguns dados na tabela clientes
INSERT INTO clientes (id_cliente, nome, email, telefone) VALUES
(1, 'João Silva', 'joao@email.com', '11999999999'),
(2, 'Maria Souza', 'maria@email.com', '11888888888');

-- Inserindo alguns dados na tabela pedidos
INSERT INTO pedidos (id_pedido, id_cliente, data_pedido, valor) VALUES
(101, 1, '2025-02-20', 250.50),
(102, 1, '2025-02-21', 100.00),
(103, 2, '2025-02-22', 300.75);

-- Realizando um INNER JOIN para listar os pedidos com os dados dos clientes
SELECT 
    clientes.id_cliente, 
    clientes.nome, 
    pedidos.id_pedido, 
    pedidos.data_pedido, 
    pedidos.valor
FROM clientes
INNER JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;
