using CottonMouth.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CottonMouth.Repositories.Interfaces
{
    public interface IStateRepo
    {
        IEnumerable<State> GetAll();
        State GetById(int id);
        void Save(State state);
        void Edit(State state);
        void RemoveData(State state);
    }
}
