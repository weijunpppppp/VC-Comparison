#!/bin/sh

dafny verify --solver-log example.smt2 --boogie /normalizeNames:0 example.dfy