import {inject, lifeCycleObserver, LifeCycleObserver} from '@loopback/core';
import {juggler} from '@loopback/repository';

const config = {
  name: 'tarea',
  connector: 'mssql',
  url: 'mssql://Fer:Fernando19@DESKTOP-15UB8OD/Tarea#3',
  host: 'DESKTOP-15UB8OD',
  port: 1433,
  user: 'Fer',
  password: '',
  database: 'Tarea#3'
};

// Observe application's life cycle to disconnect the datasource when
// application is stopped. This allows the application to be shut down
// gracefully. The `stop()` method is inherited from `juggler.DataSource`.
// Learn more at https://loopback.io/doc/en/lb4/Life-cycle.html
@lifeCycleObserver('datasource')
export class TareaDataSource extends juggler.DataSource
  implements LifeCycleObserver {
  static dataSourceName = 'tarea';
  static readonly defaultConfig = config;

  constructor(
    @inject('datasources.config.tarea', {optional: true})
    dsConfig: object = config,
  ) {
    super(dsConfig);
  }
}
