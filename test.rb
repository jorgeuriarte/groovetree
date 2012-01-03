#!/usr/bin/env ruby

require "treetop"
require "polyglot"
#require "./groovetree.rb"

Treetop.load('groovetree')
parser = GrooveTreeParser.new

p parser.parse("package minombre").content
p parser.parse("package  minombre ;").content
p parser.parse("package  minombre ;\n\t \n").content
p parser.parse("package  minombre ;//comenta rio\n").content
p parser.parse("package  minombre ; //comenta rio\n").content
p parser.parse("package minombre;\n\nimport   otropaquete;").content
p parser.parse("package minombre;\n\nimport   otropaquete;import otro;").content
p parser.parse("package minombre;\n\nimport   otropaquete\nimport otromas;import yaunotro").content
#p parser.parse("package minombre;\n\nimport   otropaquete;   // ho-ho-ho").content

#p parser.parse("package  minombre ;\n").content
