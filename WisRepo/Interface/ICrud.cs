using System.Collections.Generic;

namespace WisRepo.Interface
{
    public interface ICrud<T>
    {
        ApiModel Create(T model);

        ApiModel ReadAll();

        ApiModel ReadOne(T model);

        ApiModel Update(T model);

        ApiModel Delete(T model);
    }
}
