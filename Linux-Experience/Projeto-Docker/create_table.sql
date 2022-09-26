/* Command from create table in db*/
CREATE TABLE if not exists `dados` (
    `AlunoID` int(11) NOT NULL AUTO_INCREMENT,
    `Nome` varchar(50) NOT NULL,
    `Sobrenome` varchar(50) NOT NULL,
    `Endereco` varchar(150) NOT NULL,
    `Cidade` varchar(50) NOT NULL,
    `Host` varchar(50) NOT NULL,
  PRIMARY KEY (`AlunoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
