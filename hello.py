def application(env, start_response):
	res = "\n".join(env['QUERY_STRING'].split('&'))
	start_response('200 OK', [('Content-Type','text/plain')])
	return [bytes(res, 'utf-8')]
