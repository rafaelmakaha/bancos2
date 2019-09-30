

USE exer01aula03;

-- administrador
CREATE USER 'administradorHK' 
    IDENTIFIED BY 'admin123';

GRANT ALL PRIVILEGES ON exer01aula03.* TO administradorHK;

-- usuario
CREATE USER 'usuarioComum77' 
    IDENTIFIED BY 'paralelepipedo';

GRANT SELECT ON exer01aula03.* TO administradorHK;


-- gestor
CREATE USER 'gestoraLindona' 
    IDENTIFIED BY 'policiaAmarela48';

GRANT SELECT, UPDATE, INSERT ON exer01aula03.* TO administradorHK;