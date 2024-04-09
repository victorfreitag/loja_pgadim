
create table vendedor(
	id_vendedor serial PRIMARY KEY NOT NULL,
	nome varchar (255),
	salario varchar (255),
	faixa_comissao varchar (255),
	uf char
);

create table cliente(
	id_cliente serial PRIMARY KEY NOT NULL,
	nome varchar (255),
	logradouro varchar (255),
	complemento varchar(255),
	bairro varchar(255),
	cep varchar(255) unique,
	cidade varchar(255),
	uf varchar(255)
);

create table pedido(
	id_pedido serial PRIMARY KEY NOT NULL,
	vendedor_id integer NOT NULL,
	cliente_id integer NOT NULL,
	prazoEntrega date,
	FOREIGN KEY (vendedor_id) REFERENCES vendedor (id_vendedor),
	FOREIGN KEY (cliente_id) REFERENCES cliente (id_cliente)

);
create table produto(
	id_produto serial PRIMARY KEY NOT NULL,
	descricao varchar(255),
	unidade integer,
	valor_unitario varchar(255)

);
create table item_pedido(
	pedido_id integer NOT NULL,
	produto_id integer NOT NULL,
	quantidade integer,
	FOREIGN KEY (pedido_id) REFERENCES pedido (id_pedido),
	FOREIGN KEY (produto_id) REFERENCES produto (id_produto)
);

