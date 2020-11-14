import ballerina/grpc;

public type caliBlockingClient client object {

    *grpc:AbstractClientEndpoint;

    private grpc:Client grpcClient;

    public function __init(string url, grpc:ClientConfiguration? config = ()) {
        // initialize client endpoint.
        self.grpcClient = new(url, config);
        checkpanic self.grpcClient.initStub(self, "blocking", ROOT_DESCRIPTOR, getDescriptorMap());
    }

    public remote function createRecord(recordInfo req, grpc:Headers? headers = ()) returns ([string, grpc:Headers]|grpc:Error) {
        
        var payload = check self.grpcClient->blockingExecute("grpc_service.cali/createRecord", req, headers);
        grpc:Headers resHeaders = new;
        anydata result = ();
        [result, resHeaders] = payload;
        return [result.toString(), resHeaders];
    }

    public remote function updateRecord(recordInfo req, grpc:Headers? headers = ()) returns ([string, grpc:Headers]|grpc:Error) {
        
        var payload = check self.grpcClient->blockingExecute("grpc_service.cali/updateRecord", req, headers);
        grpc:Headers resHeaders = new;
        anydata result = ();
        [result, resHeaders] = payload;
        return [result.toString(), resHeaders];
    }

    public remote function viewRecord(recordInfo req, grpc:Headers? headers = ()) returns ([string, grpc:Headers]|grpc:Error) {
        
        var payload = check self.grpcClient->blockingExecute("grpc_service.cali/viewRecord", req, headers);
        grpc:Headers resHeaders = new;
        anydata result = ();
        [result, resHeaders] = payload;
        return [result.toString(), resHeaders];
    }

    public remote function DeleteRecord(recordInfo req, grpc:Headers? headers = ()) returns ([string, grpc:Headers]|grpc:Error) {
        
        var payload = check self.grpcClient->blockingExecute("grpc_service.cali/DeleteRecord", req, headers);
        grpc:Headers resHeaders = new;
        anydata result = ();
        [result, resHeaders] = payload;
        return [result.toString(), resHeaders];
    }

};

public type caliClient client object {

    *grpc:AbstractClientEndpoint;

    private grpc:Client grpcClient;

    public function __init(string url, grpc:ClientConfiguration? config = ()) {
        // initialize client endpoint.
        self.grpcClient = new(url, config);
        checkpanic self.grpcClient.initStub(self, "non-blocking", ROOT_DESCRIPTOR, getDescriptorMap());
    }

    public remote function createRecord(recordInfo req, service msgListener, grpc:Headers? headers = ()) returns (grpc:Error?) {
        
        return self.grpcClient->nonBlockingExecute("grpc_service.cali/createRecord", req, msgListener, headers);
    }

    public remote function updateRecord(recordInfo req, service msgListener, grpc:Headers? headers = ()) returns (grpc:Error?) {
        
        return self.grpcClient->nonBlockingExecute("grpc_service.cali/updateRecord", req, msgListener, headers);
    }

    public remote function viewRecord(recordInfo req, service msgListener, grpc:Headers? headers = ()) returns (grpc:Error?) {
        
        return self.grpcClient->nonBlockingExecute("grpc_service.cali/viewRecord", req, msgListener, headers);
    }

    public remote function DeleteRecord(recordInfo req, service msgListener, grpc:Headers? headers = ()) returns (grpc:Error?) {
        
        return self.grpcClient->nonBlockingExecute("grpc_service.cali/DeleteRecord", req, msgListener, headers);
    }

};

public type recordInfo record {|
    string id = "";
    string artist_name = "";
    string Album_name = "";
    string year_Released = "";
    
|};



const string ROOT_DESCRIPTOR = "0A0A63616C692E70726F746F120C677270635F736572766963651A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F2281010A0A7265636F7264496E666F120E0A02696418012001280952026964121F0A0B6172746973745F6E616D65180220012809520A6172746973744E616D65121D0A0A416C62756D5F6E616D651803200128095209416C62756D4E616D6512230A0D796561725F52656C6561736564180420012809520C7965617252656C656173656432A4020A0463616C6912460A0C6372656174655265636F726412182E677270635F736572766963652E7265636F7264496E666F1A1C2E676F6F676C652E70726F746F6275662E537472696E6756616C756512460A0C7570646174655265636F726412182E677270635F736572766963652E7265636F7264496E666F1A1C2E676F6F676C652E70726F746F6275662E537472696E6756616C756512440A0A766965775265636F726412182E677270635F736572766963652E7265636F7264496E666F1A1C2E676F6F676C652E70726F746F6275662E537472696E6756616C756512460A0C44656C6574655265636F726412182E677270635F736572766963652E7265636F7264496E666F1A1C2E676F6F676C652E70726F746F6275662E537472696E6756616C7565620670726F746F33";
function getDescriptorMap() returns map<string> {
    return {
        "cali.proto":"0A0A63616C692E70726F746F120C677270635F736572766963651A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F2281010A0A7265636F7264496E666F120E0A02696418012001280952026964121F0A0B6172746973745F6E616D65180220012809520A6172746973744E616D65121D0A0A416C62756D5F6E616D651803200128095209416C62756D4E616D6512230A0D796561725F52656C6561736564180420012809520C7965617252656C656173656432A4020A0463616C6912460A0C6372656174655265636F726412182E677270635F736572766963652E7265636F7264496E666F1A1C2E676F6F676C652E70726F746F6275662E537472696E6756616C756512460A0C7570646174655265636F726412182E677270635F736572766963652E7265636F7264496E666F1A1C2E676F6F676C652E70726F746F6275662E537472696E6756616C756512440A0A766965775265636F726412182E677270635F736572766963652E7265636F7264496E666F1A1C2E676F6F676C652E70726F746F6275662E537472696E6756616C756512460A0C44656C6574655265636F726412182E677270635F736572766963652E7265636F7264496E666F1A1C2E676F6F676C652E70726F746F6275662E537472696E6756616C7565620670726F746F33",
        "google/protobuf/wrappers.proto":"0A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F120F676F6F676C652E70726F746F62756622230A0B446F75626C6556616C756512140A0576616C7565180120012801520576616C756522220A0A466C6F617456616C756512140A0576616C7565180120012802520576616C756522220A0A496E74363456616C756512140A0576616C7565180120012803520576616C756522230A0B55496E74363456616C756512140A0576616C7565180120012804520576616C756522220A0A496E74333256616C756512140A0576616C7565180120012805520576616C756522230A0B55496E74333256616C756512140A0576616C756518012001280D520576616C756522210A09426F6F6C56616C756512140A0576616C7565180120012808520576616C756522230A0B537472696E6756616C756512140A0576616C7565180120012809520576616C756522220A0A427974657356616C756512140A0576616C756518012001280C520576616C756542570A13636F6D2E676F6F676C652E70726F746F627566420D577261707065727350726F746F50015A057479706573F80101A20203475042AA021E476F6F676C652E50726F746F6275662E57656C6C4B6E6F776E5479706573620670726F746F33"
        
    };
}

