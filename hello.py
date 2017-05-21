def application(env, start_response):
    status = "200 OK"
    headers = [('Content-Type', 'text/plain')]
    body = env['QUERY-STRING'].split('&')
    body = '/r/n'.join(body)

    start_response(status, headers)
    return [body]
