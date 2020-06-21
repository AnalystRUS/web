"""
:parameter
    environ -  dictonary that contains all environment variables
    start_response - sent headers to client
"""
def wsgi_application(environ,start_response):
    # Bisiness logic
    status = '200 ok'
    headers = [
        ('Content-Type','text/plain')
    ]
    start_response(status,headers)
    return [bytes('\r\n'.join(environ['QUERY_STRING'].split('&')),
                  encoding="utf8")]