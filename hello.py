def application(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    return [bytes('\r\n'.join(env['QUERY_STRING'].split('&')), encoding="utf8")]
