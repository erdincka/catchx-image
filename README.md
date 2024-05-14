# Ezmeral Data Fabric - Banking Demo App Image

Container image used to run [CatchX](https://github.com/erdincka/catchx) demo application.

This image ensures we have a functional Ezmeral Data Fabric client configured with the libraries and settings required for the demo.

Run the container with:

```bash
docker run -d -t --name catchx -e MAPR_IP=10.1.1.31 -e MAPR_USER=mapr -e MAPR_PASS=mapr123 -e MAPR_CLUSTER=core -p 3000:3000 erdincka/catchx:latest
```

Give it a few minutes until following line is shown, then you can connect to [http://localhost:3000](http://localhost:3000):

```sh
NiceGUI ready to go on http://localhost:3000, and http://172.17.0.2:3000
```

or fix the error if there are any.