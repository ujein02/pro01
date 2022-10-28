-- 질문 및 답변 테이블 생성
create table qnaa(
no	number	primary key,
title varchar2(100)	not null,
content	varchar2(1000) not null,	
author	varchar2(16) not null,	
resdate	date not null,
lev number not null,            -- 깊이
parno number not null,          -- 부모글 번호
sec char(1)                     -- 비밀글 유무
);

commit;

select * from member1;

select * from qnaa;

select * from qnaa order by rownum desc;

select * from qnaa order by parno asc, lev asc;

create sequence qseq;
insert into qnaa values (qseq.nextval, '문의글1', '문의 글 내용내용1', 'kje', sysdate, 0, qseq.currval, 'N');
insert into qnaa values (qseq.nextval, '문의글2', '문의 글 내용내용2', 'kje', sysdate, 0, qseq.currval, 'N');
insert into qnaa values (qseq.nextval, '문의글3', '문의 글 내용내용3', 'abcd1111', sysdate, 0, qseq.currval, 'Y');
insert into qnaa values (qseq.nextval, '문의글4', '문의 글 내용내용4', 'abcd1111', sysdate, 0, qseq.currval, 'N');
insert into qnaa values (qseq.nextval, '문의글5', '문의 글 내용내용5', 'kje', sysdate, 0, qseq.currval, 'N');
insert into qnaa values (qseq.nextval, '문의글6', '문의 글 내용내용6', 'abcd1111', sysdate, 0, qseq.currval, 'Y');

insert into qnaa values (qseq.nextval, '답변합니다', '답변입니다. 문의글에 대한 답변1', 'admin', sysdate, 1, 1, 'N');