import sqlite3
from bottle import route, run, debug, template, static_file, request, redirect, response

import random
import html
import secrets

@route('/static/<filename>')
def serve_static(filename):
	return static_file(filename, root='/home/student/hw6files/static/')


@route('/')
@route('/historyquestion')
def question():
    # Todo: fill in question.tpl with your HTML
    return template('question')

@route('/historyresults', method='POST')
def results():
    # Todo: get a code from the GET parameters and show the correct list of suggested majors
	majors = {"E": "Art History", "b": "Chemistry", "T": "Economics", "u": "English", "c": "Math", "A": "Physics"}

	getlist = request.POST.get('unvisited')

	printed_majors = []
	missing = ""
	for url, major in majors.items():
    		if url in getlist:
        		printed_majors.append(major)
    		else:
        		missing += " " + major + ", "

	if printed_majors:
		if len(printed_majors) == 1:
			return "Have you ever considered " + printed_majors[0] + "?"
		elif len(printed_majors) == 2:
			return "Have you ever considered " + printed_majors[0] + " or " + printed_majors[1] + "?"
		else:
      return "Have you ever considered " + ", ".join(printed_majors[:-1]) + ", or " + printed_majors[-1] + "?"
	else:
    return "It's time to choose a major."


debug(True)
run(host='0.0.0.0')
