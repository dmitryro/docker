import daemon
import os
from subprocess import Popen, PIPE

with daemon.DaemonContext():
    if __name__ == "__main__":
        p = Popen('docker -d', shell=True,
                  stdout=PIPE, stderr=PIPE)
        out, err = p.communicate()




