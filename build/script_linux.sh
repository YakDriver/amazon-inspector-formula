#!/bin/bash
sudo salt-call --local state.show_sls amazon-inspector
sudo salt-call --local state.sls amazon-inspector mock=True
