
import multiprocessing

# bind = "unix:/run/gunicorn.socket" # with nginx
bind = "0.0.0.0:80"
# pidfile = '/run/gunicorn.pid'
# errorlog = '/home/ubuntu/gunicorn.log'
loglevel = 'info'
daemon = False

workers = multiprocessing.cpu_count() * 2 + 1
threads = 2
worker_class = 'sync'
max_requests = 768

user = 'gunicorn'
group = 'gunicorn'