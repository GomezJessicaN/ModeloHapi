import * as nconf from "nconf";
import * as path from "path";
import { ServiceAccount } from 'firebase-admin';

//Read Configurations
const configs = new nconf.Provider({
  env: true,
  argv: true,
  store: {
    type: 'file',
    file: getPath()
  }
});

export function getPath():string {
    return path.join(__dirname, `./config.${process.env.NODE_ENV || "dev"}.json`);
}

export interface IServerConfigurations {
    port: number;
    plugins: Array<string>;
    jwtSecret: string;
    jwtExpiration: string;
    routePrefix: string;
    firebase: ServiceAccount;//IFirebaseConfigurations;
}

export interface IFirebaseConfigurations {
    type: string;
    project_id: string;
    private_key_id: string;
    private_key: string;
    client_email: string;
    client_id: string;
    auth_uri: string;
    token_uri: string;
    auth_provider_x509_cert_url: string;
    client_x509_cert_url: string;
}


export interface IDataConfiguration {
    connectionString: string;
}

export function getDatabaseConfig(): IDataConfiguration {
    return configs.get("database");
}

export function getServerConfigs(): IServerConfigurations {
    return configs.get("server");
}
