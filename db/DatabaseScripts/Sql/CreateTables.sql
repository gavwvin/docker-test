USE [DockerTestDb]

CREATE TABLE [Product] (
	[ID] int PRIMARY KEY,
	[Name] varchar(80) NULL,
	[Price] decimal(10, 2) NULL,
)