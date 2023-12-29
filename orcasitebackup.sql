--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.0

-- Started on 2023-12-28 22:59:38

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 222 (class 1259 OID 16437)
-- Name: comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments (
    commentid integer NOT NULL,
    commenttext text,
    commentposter integer,
    commentpostid integer
);


--
-- TOC entry 221 (class 1259 OID 16436)
-- Name: comments_commentid_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_commentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4883 (class 0 OID 0)
-- Dependencies: 221
-- Name: comments_commentid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_commentid_seq OWNED BY public.comments.commentid;


--
-- TOC entry 224 (class 1259 OID 16456)
-- Name: groupmember; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.groupmember (
    memberid integer NOT NULL,
    joindate date,
    joined integer,
    joiningpersonid integer
);


--
-- TOC entry 223 (class 1259 OID 16455)
-- Name: groupmember_memberid_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.groupmember_memberid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4884 (class 0 OID 0)
-- Dependencies: 223
-- Name: groupmember_memberid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.groupmember_memberid_seq OWNED BY public.groupmember.memberid;


--
-- TOC entry 220 (class 1259 OID 16423)
-- Name: posts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.posts (
    postid integer NOT NULL,
    title text,
    description text,
    postimg text,
    posterid integer,
    postgroup integer,
    postvid text
);


--
-- TOC entry 219 (class 1259 OID 16422)
-- Name: posts_postid_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.posts_postid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4885 (class 0 OID 0)
-- Dependencies: 219
-- Name: posts_postid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.posts_postid_seq OWNED BY public.posts.postid;


--
-- TOC entry 226 (class 1259 OID 16478)
-- Name: replies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.replies (
    replyid integer NOT NULL,
    replytext text,
    replyto integer,
    replyfrom integer,
    replytoreply integer
);


--
-- TOC entry 225 (class 1259 OID 16477)
-- Name: replies_replyid_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.replies_replyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 225
-- Name: replies_replyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.replies_replyid_seq OWNED BY public.replies.replyid;


--
-- TOC entry 218 (class 1259 OID 16407)
-- Name: subgroups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subgroups (
    groupid integer NOT NULL,
    groupname text,
    groupdesc text,
    rules text,
    groupimg text,
    groupcreator integer
);


--
-- TOC entry 217 (class 1259 OID 16406)
-- Name: subgroups_groupid_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.subgroups_groupid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 217
-- Name: subgroups_groupid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.subgroups_groupid_seq OWNED BY public.subgroups.groupid;


--
-- TOC entry 216 (class 1259 OID 16396)
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    userid integer NOT NULL,
    username text,
    userpass text,
    userprofile text,
    email text,
    fname text,
    lname text,
    bio text
);


--
-- TOC entry 215 (class 1259 OID 16395)
-- Name: users_userid_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4888 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_userid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;


--
-- TOC entry 4710 (class 2604 OID 16440)
-- Name: comments commentid; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments ALTER COLUMN commentid SET DEFAULT nextval('public.comments_commentid_seq'::regclass);


--
-- TOC entry 4711 (class 2604 OID 16459)
-- Name: groupmember memberid; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.groupmember ALTER COLUMN memberid SET DEFAULT nextval('public.groupmember_memberid_seq'::regclass);


--
-- TOC entry 4709 (class 2604 OID 16426)
-- Name: posts postid; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts ALTER COLUMN postid SET DEFAULT nextval('public.posts_postid_seq'::regclass);


--
-- TOC entry 4712 (class 2604 OID 16481)
-- Name: replies replyid; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.replies ALTER COLUMN replyid SET DEFAULT nextval('public.replies_replyid_seq'::regclass);


--
-- TOC entry 4708 (class 2604 OID 16410)
-- Name: subgroups groupid; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subgroups ALTER COLUMN groupid SET DEFAULT nextval('public.subgroups_groupid_seq'::regclass);


--
-- TOC entry 4707 (class 2604 OID 16399)
-- Name: users userid; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);


--
-- TOC entry 4720 (class 2606 OID 16444)
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (commentid);


--
-- TOC entry 4722 (class 2606 OID 16461)
-- Name: groupmember groupmember_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.groupmember
    ADD CONSTRAINT groupmember_pkey PRIMARY KEY (memberid);


--
-- TOC entry 4718 (class 2606 OID 16430)
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (postid);


--
-- TOC entry 4724 (class 2606 OID 16485)
-- Name: replies replies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.replies
    ADD CONSTRAINT replies_pkey PRIMARY KEY (replyid);


--
-- TOC entry 4716 (class 2606 OID 16414)
-- Name: subgroups subgroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subgroups
    ADD CONSTRAINT subgroups_pkey PRIMARY KEY (groupid);


--
-- TOC entry 4714 (class 2606 OID 16403)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);


--
-- TOC entry 4728 (class 2606 OID 16445)
-- Name: comments comments_commentposter_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_commentposter_fkey FOREIGN KEY (commentposter) REFERENCES public.users(userid);


--
-- TOC entry 4729 (class 2606 OID 16450)
-- Name: comments comments_postid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_postid_fkey FOREIGN KEY (commentpostid) REFERENCES public.posts(postid);


--
-- TOC entry 4730 (class 2606 OID 16462)
-- Name: groupmember groupmember_joined_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.groupmember
    ADD CONSTRAINT groupmember_joined_fkey FOREIGN KEY (joined) REFERENCES public.subgroups(groupid);


--
-- TOC entry 4731 (class 2606 OID 16467)
-- Name: groupmember groupmember_joiningpersonid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.groupmember
    ADD CONSTRAINT groupmember_joiningpersonid_fkey FOREIGN KEY (joiningpersonid) REFERENCES public.users(userid);


--
-- TOC entry 4726 (class 2606 OID 16431)
-- Name: posts posts_posterid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_posterid_fkey FOREIGN KEY (posterid) REFERENCES public.users(userid);


--
-- TOC entry 4727 (class 2606 OID 16472)
-- Name: posts posts_postgroup_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_postgroup_fkey FOREIGN KEY (postgroup) REFERENCES public.subgroups(groupid);


--
-- TOC entry 4732 (class 2606 OID 16491)
-- Name: replies replies_replyfrom_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.replies
    ADD CONSTRAINT replies_replyfrom_fkey FOREIGN KEY (replyfrom) REFERENCES public.users(userid);


--
-- TOC entry 4733 (class 2606 OID 16486)
-- Name: replies replies_replyto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.replies
    ADD CONSTRAINT replies_replyto_fkey FOREIGN KEY (replyto) REFERENCES public.comments(commentid);


--
-- TOC entry 4734 (class 2606 OID 16496)
-- Name: replies replies_replytoreply_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.replies
    ADD CONSTRAINT replies_replytoreply_fkey FOREIGN KEY (replytoreply) REFERENCES public.users(userid);


--
-- TOC entry 4725 (class 2606 OID 16417)
-- Name: subgroups subgroups_groupcreator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subgroups
    ADD CONSTRAINT subgroups_groupcreator_fkey FOREIGN KEY (groupcreator) REFERENCES public.users(userid);


-- Completed on 2023-12-28 22:59:39

--
-- PostgreSQL database dump complete
--

