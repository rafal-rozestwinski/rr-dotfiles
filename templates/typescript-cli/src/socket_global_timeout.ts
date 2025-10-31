

import * as http from 'http'

export function set_global_timeout(timeout_new: number) {
    console.error(`MonkeyPatching: set_global_timeout: ${timeout_new}`)
    const originalOnSocket = http.ClientRequest.prototype.onSocket;
    http.ClientRequest.prototype.onSocket = function(socket: any) {
        const that = this;
        socket.setTimeout((this as any).timeout ? (this as any).timeout : timeout_new); // this.timeout ? this.timeout : 3000);
        socket.on('timeout', function() {
            //console.error(`MonkeyPatching: socket_timeout!`)
            //that.abort();
            that.destroy();
        });
        originalOnSocket.call(this, socket);
    };
}