
CREATE TABLE public.departments (
    dept_no character varying(4) NOT NULL,
    dept_name character varying(40) NOT NULL
);



CREATE TABLE public.dept_emp (
    emp_no integer NOT NULL,
    dept_no character varying(4) NOT NULL
);




CREATE TABLE public.dept_manager (
    dept_no character varying(4) NOT NULL,
    emp_no integer NOT NULL
);




CREATE TABLE public.employees (
    emp_no integer NOT NULL,
    emp_title_id character varying(5) NOT NULL,
    birth_date date NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    sex character(1) NOT NULL,
    hire_date date NOT NULL
);



CREATE TABLE public.salaries (
    emp_no integer NOT NULL,
    salary integer NOT NULL
);




CREATE TABLE public.titles (
    title_id character varying(5) NOT NULL,
    title character varying(50) NOT NULL
);




ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);


--
-- TOC entry 3476 (class 2606 OID 16540)
-- Name: dept_emp dept_emp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_emp_pkey PRIMARY KEY (emp_no, dept_no);


--
-- TOC entry 3478 (class 2606 OID 16555)
-- Name: dept_manager dept_manager_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 3474 (class 2606 OID 16530)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 3480 (class 2606 OID 16570)
-- Name: salaries salaries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 3472 (class 2606 OID 16525)
-- Name: titles titles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);


--
-- TOC entry 3483 (class 2606 OID 16541)
-- Name: dept_emp dept_emp_dept_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_emp_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);


--
-- TOC entry 3484 (class 2606 OID 16546)
-- Name: dept_emp dept_emp_emp_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_emp_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


--
-- TOC entry 3485 (class 2606 OID 16556)
-- Name: dept_manager dept_manager_dept_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);


--
-- TOC entry 3486 (class 2606 OID 16561)
-- Name: dept_manager dept_manager_emp_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


--
-- TOC entry 3481 (class 2606 OID 16531)
-- Name: employees employees_emp_title_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_emp_title_id_fkey FOREIGN KEY (emp_title_id) REFERENCES public.titles(title_id);


--
-- TOC entry 3482 (class 2606 OID 16576)
-- Name: employees fk_employees_emp_title_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_employees_emp_title_id FOREIGN KEY (emp_title_id) REFERENCES public.titles(title_id);


--
-- TOC entry 3487 (class 2606 OID 16571)
-- Name: salaries salaries_emp_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


-- Completed on 2025-03-06 18:55:55 CST

--
-- PostgreSQL database dump complete
--

