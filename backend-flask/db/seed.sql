-- this file was manually created
INSERT INTO public.users (display_name, handle, cognito_user_id)
VALUES
  ('Moha Med', 'mohamed' ,'MOCK'),
  ('Andrew Brown', 'andrewbrown' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'mohamed' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )
