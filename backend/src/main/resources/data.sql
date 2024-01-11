INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('HTML', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2024-02-03T00:00:00Z', TIMESTAMP WITH TIME ZONE '2025-02-03T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2024-05-03T00:00:00Z', TIMESTAMP WITH TIME ZONE '2025-05-03T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal', 1, 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas', 3, 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg', 0, 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Vamos começar!', 1, 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Parte 2', 2, 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Parte Final', 3, 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2024-02-03T10:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2024-02-03T11:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1', 1, 1);
INSERT INTO tb_content (text_content, video_uri, id) VALUES ('Material de Apoio 1', 'https://www.youtube.com/watch?v=rMuHty2zn_4', 1);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2', 2, 1);
INSERT INTO tb_content (text_content, video_uri, id) VALUES ('Material de Apoio 2', 'https://www.youtube.com/watch?v=rMuHty2zn_4', 2);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3', 3, 1);
INSERT INTO tb_content (text_content, video_uri, id) VALUES ('Material de Apoio 3', 'https://www.youtube.com/watch?v=rMuHty2zn_4', 3);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa', 4, 1);
INSERT INTO tb_task (description, question_count, approval_count, weight, due_date, id) VALUES ('Tarefa do cap 1', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2024-02-25T00:00:00Z', 4);

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1); 
