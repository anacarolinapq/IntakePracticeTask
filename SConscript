Import('env')
import gslab_scons as gs

build  = env['CONFIG']['global']['build']['prepare_data']
source = env['CONFIG']['global']['source']['prepare_data']

# env.BuildPython(target  = ['#%s/data.txt'       % build],
#                 source  = ['#%s/create_data.py' % source],
#                 log_ext =  'create_data')

# env.BuildStata(target  = ['#%s/data.txt'       % build],
#                source  = ['#%s/create_data.do' % source],
#                log_ext =  'create_data')

# env.BuildR(target  = ['#%s/data.txt'      % build],
#            source  = ['#%s/create_data.r' % source],
#            log_ext =  'create_data')

# env.BuildMatlab(target  = ['#%s/data.txt'        % build],
#                 source  = ['#%s/create_data.m'   % source],
#                 log_ext =  'create_data')

# # Invalid syntax for Windows.
# gs.build_anything(target  = ['#%s/data.txt' % build], 
#                   source  = [''],
#                   action  = 'sh source/prepare_data/create_data.sh',
#                   log_ext = 'create_data',
#                   env     = env)

# Prepare data with external tool (Dropbox) using rclone 
gs.build_anything(target  = ['#%s/data.txt' % build], 
                  source  = [''],
                  action  = 'rclone copy gslab_remote:"GSLab Team Folder/Practice Task/" ./build/prepare_data/',
                  log_ext = 'create_data',
                  env     = env)


env.Install('#release/lg', '#%s/data.txt' % build)
