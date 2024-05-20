-- Member ���̺� ����
CREATE TABLE member (
    userid VARCHAR2(50) PRIMARY KEY,
    password VARCHAR2(100) NOT NULL,
    name VARCHAR2(50) NOT NULL,
    year VARCHAR2(4),
    month VARCHAR2(2),
    day VARCHAR2(2),
    gender VARCHAR2(10),
    postcode VARCHAR2(20),
    roadaddr1 VARCHAR2(100),
    roadaddr2 VARCHAR2(100)
);
drop table member;

--���̺� ��������
SELECT constraint_name, table_name 
FROM user_constraints 
WHERE r_constraint_name IN (
    SELECT constraint_name 
    FROM user_constraints 
    WHERE table_name = 'MEMBER'
);

ALTER TABLE QNA DROP CONSTRAINT SYS_C008326;


-- ������ ���� (ID �ڵ� ������)
CREATE SEQUENCE member_seq
START WITH 1
INCREMENT BY 1
NOCACHE;

-- ������ ����
INSERT INTO member (id, pw, name, birth, email, tel, addr, postcode)
VALUES ('admin', '1234', 'admin', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'admin@example.com', '010-1234-5678', 'Seoul, Korea', '12345');

INSERT INTO member (userid, password, name, year, month, day, gender, postcode, roadaddr1, roadaddr2)
VALUES ('admin', '1234', 'admin', '1990', '01', '01', 'M', '12345', 'Road 1', 'Addr 1');

commit;

INSERT INTO member (id, pw, name, birth, email, tel, addr, postcode)
VALUES ('user2', 'encryptedpassword2', 'Jane Smith', TO_DATE('1992-02-02', 'YYYY-MM-DD'), 'janesmith@example.com', '010-8765-4321', 'Busan, Korea', '54321');

-- ������ ��ȸ
SELECT * FROM member;

-- Ư�� ID�� ������ ��ȸ
SELECT * FROM member WHERE id = 'user1';

-- ������ ������Ʈ
UPDATE member 
SET pw = 'newencryptedpassword1', email = 'newjohndoe@example.com'
WHERE id = 'user1';

-- ������ ����
DELETE FROM member WHERE id = 'user1';

-- DML ����
-- ��� ��� ��ȸ
SELECT * FROM member;

-- Ư�� ��� ��ȸ
SELECT * FROM member WHERE id = 'user1';

-- ��� ����
INSERT INTO member (id, pw, name, birth, email, tel, addr, postcode)
VALUES ('user3', 'encryptedpassword3', 'Alice Brown', TO_DATE('1993-03-03', 'YYYY-MM-DD'), 'alicebrown@example.com', '010-1234-8765', 'Incheon, Korea', '67890');

-- ��� ��й�ȣ ����
UPDATE member SET pw = 'updatedencryptedpassword' WHERE id = 'user3';

-- ��� ���� ����
UPDATE member 
SET name = 'Updated Name', email = 'updatedemail@example.com', tel = '010-1111-2222', addr = 'Updated Address', postcode = '00000'
WHERE id = 'user3';

-- ��� ����
DELETE FROM member WHERE id = 'user3';