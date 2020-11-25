import {DefaultCrudRepository} from '@loopback/repository';
import {DatosEstudiante, DatosEstudianteRelations} from '../models';
import {TareaDataSource} from '../datasources';
import {inject} from '@loopback/core';

export class DatosEstudianteRepository extends DefaultCrudRepository<
  DatosEstudiante,
  typeof DatosEstudiante.prototype.id,
  DatosEstudianteRelations
> {
  constructor(
    @inject('datasources.tarea') dataSource: TareaDataSource,
  ) {
    super(DatosEstudiante, dataSource);
  }
}
