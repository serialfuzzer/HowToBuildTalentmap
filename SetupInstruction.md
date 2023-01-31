# How to build Talentmap? -- Comprehensive Tutorial 

1. Download `build.sh` from this repository
2. Run `$ chmod +x build.sh` and then `$ bash build.sh`

![Build.sh](/Run.jpg)

3. `$ cd State-TalentMAP-API-dev`

4. `$ docker-compose build`

![Docker](Build.jpg)

5. After the building process completes, run `$ docker-compose up` 
   
![Docker run](/compose-up.jpg)

6. Wait for `docker-compose up` to complete. You can proceed to step 7 after seeing `Starting development server at http://0.0.0.0:8000/`

![After done](/built.jpg)

7. Open a new terminal tab, and run `$ docker container ps` and note the container id for `state-talentmap-api-dev_app`. In my case, the container id is `7e019acfccca` as you can see in the screenshot

![Container id](/container_id.jpg)

8. With the container id noted from step 7, run the following command: `$ docker exec -it CONTAINER_ID  /bin/bash`. In my case, the command would be `$ docker exec -it 7e019acfccca  /bin/bash`

![Into Container](/intoTheContainer.jpg)

9. Now, run the following command `$ python manage.py migrate`

![Running migrations](/running%20migrations.jpg)

10. Now, run `$ python manage.py create_demo_environment`

![Creating demo environment](/create%20demo%20environment.jpg)

11. Now, run `$ python manage.py create_seeded_users`

![create seeded users](/Create%20seeded%20users.jpg)

12. Now the API should be up and running at http://localhost:8000

![Success](/Successful%20.jpg)