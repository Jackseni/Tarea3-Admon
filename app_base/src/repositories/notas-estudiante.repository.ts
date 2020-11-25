import {DefaultCrudRepository} from '@loopback/repository';
import {NotasEstudiante, NotasEstudianteRelations} from '../models';
import {TareaDataSource} from '../datasources';
import {inject} from '@loopback/core';

export class NotasEstudianteRepository extends DefaultCrudRepository<
  NotasEstudiante,
  typeof NotasEstudiante.prototype.id,
  NotasEstudianteRelations
> {
  constructor(
    @inject('datasources.tarea') dataSource: TareaDataSource,
  ) {
    super(NotasEstudiante, dataSource);
  }
}
