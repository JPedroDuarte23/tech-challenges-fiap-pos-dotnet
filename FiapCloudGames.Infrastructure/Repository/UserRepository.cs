using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FiapCloudGames.Domain.Entities;
using FiapCloudGames.Infrastructure.Repository.Interfaces;
using MongoDB.Driver;

namespace FiapCloudGames.Infrastructure.Repository;

public class UserRepository : IUserRepository
{
    private readonly IMongoCollection<User> _collection;

    public UserRepository(IMongoDatabase database)
    {
        _collection = database.GetCollection<User>("users");
    }

    public async Task CreateAsync(User user)
    {
        await _collection.InsertOneAsync(user);
    }
    public async Task<User?> GetByEmailAsync(string email)
    {
        return await _collection.Find(u => u.Email == email).FirstAsync();
    }

    public async Task<User?> GetByIdAsync(Guid id)
    {
        return await _collection.Find(u => u.Id == id).FirstOrDefaultAsync();
    }

    public async Task<IEnumerable<User>> GetAllAsync()
    {
        return await _collection.Find(_ => true).ToListAsync();
    }

    public async Task AddAsync(User user)
    {
        await _collection.InsertOneAsync(user);
    }

    public async Task UpdateAsync(User user)
    {
        await _collection.ReplaceOneAsync(u => u.Id == user.Id, user);
    }

    public async Task DeleteAsync(Guid id)
    {
        await _collection.DeleteOneAsync(u => u.Id == id);
    }

    public async Task<IEnumerable<Player>> GetPlayersAsync()
    {
        return await _collection.OfType<Player>().Find(_ => true).ToListAsync();
    }

    public async Task<IEnumerable<Publisher>> GetPublishersAsync()
    {
        return await _collection.OfType<Publisher>().Find(_ => true).ToListAsync();
    }
}
