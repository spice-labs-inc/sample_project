# Sample Spice Labs app

This is an example of building and updating a Java app that
runs in a container. Each phase of the app can be 
surveyed by [Goat Rodeo](https://goatrodeo.cc) and
uploaded to [Spice Labs](https://spicelabs.io) inventory service.

## Running the demo

To run this demo, you'll need to be on Linux or OSX, have Git,
the JVM, Maven, and Docker (or Rancher) installed. 

You will also need a Spice Labs account and the Spice Pass from that account set as an environment variable as follows:

`export SPICE_PASS="your Spice Pass here"`

Now create a local clone of this repository.

`git clone git@github.com:spice-labs-inc/sample_project.git`

### Phase 1

Check out the first phase of the project:
`git checkout tags/phase1 -b phase1`

Next, build the project: `./build.sh`

If you want to test it, type `docker run -ti --rm shade:1`

You will also see generated artifact `phase1/thing1.what`

Then run the [Spice Labs CLI](https://github.com/spice-labs-inc/spice-labs-cli):
`spice  --input=phase1 --tag=shade`

This will build an [Artifact Dependency Graph](https://omnibor.io/) for the 
container you created and then upload that ADG to your project on Spice Labs.

"But why is the artifact called 'thing1.what'?" Because you don't always have
a clean name for artifacts. This gives you a sense of what Spice Labs can do.

### Phase 2

In this phase, we cleaned up the log4shell problem by upgrading
the version of log4j.

Check out the second phase of the project:
`git checkout tags/phase2 -b phase2`

Next, build the project: `./build.sh`

If you want to test it, type `docker run -ti --rm shade:2`

You will also see generated artifact `phase2/thing2.what`

Then run the [Spice Labs CLI](https://github.com/spice-labs-inc/spice-labs-cli):
`spice  --input=phase2 --tag=shade`

### Phase 3

In this phase, the other dependencies (the container image and the other libraries)
are upgraded to versions without vulnerabilities (as of 2025/08/26).

Check out the third phase of the project:
`git checkout tags/phase3 -b phase3`

Next, build the project: `./build.sh`

If you want to test it, type `docker run -ti --rm shade:3`

You will also see generated artifact `phase3/thing3.what`

Then run the [Spice Labs CLI](https://github.com/spice-labs-inc/spice-labs-cli):
`spice  --input=phase3 --tag=shade`