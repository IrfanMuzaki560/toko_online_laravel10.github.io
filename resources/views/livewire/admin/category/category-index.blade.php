<div>
    <!-- Page Header -->
    <div class="page-header d-print-none">
        <div class="container-xl">
            <div class="row g-2 align-items-center">
                <div class="col">
                    <!-- Page pre-title -->
                    <div class="page-pretitle">
                        Categories
                    </div>
                    <h2 class="page-title">
                        List of Categories
                    </h2>
                </div>
                <!-- Page title actions -->
                <div class="col-auto ms-auto d-print-none">
                    <div class="btn-list">
                        <a href="#" class="btn btn-primary d-none d-sm-inline-block" data-bs-toggle="modal" data-bs-target="#modal-category">
                            <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path d="M12 5l0 14" />
                                <path d="M5 12l14 0" />
                            </svg>
                            New Category
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Page body -->
    <div class="page-body">
        <div class="container-xl">
            <div class="row row-deck row-cards">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Categories</h3>
                        </div>
                        <div class="card-body border-bottom py-3">
                            <div class="d-flex">
                                <div class="text-secondary">
                                    Show
                                    <div class="mx-2 d-inline-block">
                                        <!-- Per page input with Livewire binding -->
                                        <input type="number" wire:model="perPage" wire:change="changePerPage($event.target.value)" class="form-control form-control-sm" value="{{ $perPage }}" min="1" max="25" size="3" aria-label="Categories per page">
                                    </div>
                                    entries
                                </div>
                                <div class="ms-auto text-secondary">
                                    Search:
                                    <div class="ms-2 d-inline-block">
                                        <!-- Search input field with Livewire binding -->
                                        <input type="text" wire:model="search" class="form-control form-control-sm" aria-label="Search categories">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Categories Table -->
                        <div class="table-responsive">
                            <table class="table card-table table-vcenter text-nowrap datatable">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Slug</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse ($categories as $category)
                                        <tr>
                                            <td>{{ $category->name }}</td>
                                            <td>{{ $category->slug }}</td>
                                            <td class="text-end">
                                                <!-- Edit Button -->
                                                <a wire:click="$dispatch('edit-category', { id: '{{ $category->id }}' })" class="btn btn-outline-primary btn-sm btn-pill w-20" href="#" data-bs-toggle="modal" data-bs-target="#modal-category">
                                                    Edit
                                                </a>
                                                <!-- Delete Button -->
                                                <a wire:click="delete('{{ $category->id }}')" wire:confirm="Are you sure you want to delete this?" class="btn btn-outline-danger btn-sm btn-pill w-20" href="#">Delete</a>
                                            </td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="3" class="text-center">
                                                No categories found.
                                            </td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>

                        <!-- Pagination Links -->
                        <div class="card-footer">
                            {{ $categories->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Category Creation/Update -->
    <livewire:admin.category.create-update-category />
</div>
