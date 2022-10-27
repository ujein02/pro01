create table faqa(
no	number	primary key,
title varchar2(100)	not null,
content	varchar2(600),	
author	varchar2(16),	
resdate	date	default sysdate,
gubun number not null,       -- ����(0) / �亯(1) ����
parno number not null        -- ����(1)�� �亯(1)�� ���� ��ȣ
);

create sequence fseq;

commit;


update faqa set author='admin' where no=5;

insert into faqa values (fseq.nextval, '����1', '������ ���� ����', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, '����2', '������ ���� ����', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, '����3', '������ ���� ���� 3', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, '����4', '������ ���� ���� 4', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, '����5', '������ ���� ���� 5', 'admin', sysdate, 0, fseq.currval);

insert into faqa values (fseq.nextval, '�亯1', '�亯1_������ ���� �亯 ���� 1', 'admin', sysdate, 1, 1);
insert into faqa values (fseq.nextval, '�亯2', '�亯2_������ ���� �亯 ���� 2', 'admin', sysdate, 1, 2);
insert into faqa values (fseq.nextval, '�亯3', '�亯3_������ ���� �亯 ���� 3', 'admin', sysdate, 1, 3);
insert into faqa values (fseq.nextval, '�亯4', '�亯4_������ ���� �亯 ���� 4', 'admin', sysdate, 1, 4);
insert into faqa values (fseq.nextval, '�亯5', '�亯2_������ ���� �亯 ���� 5', 'admin', sysdate, 1, 5);

select * from faqa;


select * from faqa order by parno asc, gubun asc;


update faqa set author='admin' where no=5;

create sequence fseq start with 11;
drop sequence fseq;

update faqa set no=10 where no=11;

delete from faqa where no=9;
